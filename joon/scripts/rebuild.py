#!/usr/bin/env python3
"""Rebuild the pinned upstream APK with Joon's verified TV customizations."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[2]
CUSTOM = ROOT / 'joon'
ANDROID = '{http://schemas.android.com/apk/res/android}'


def run(*args):
    subprocess.run([str(a) for a in args], check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apk', type=Path, required=True)
    parser.add_argument('--abi', choices=['armeabi-v7a', 'arm64-v8a'], required=True)
    parser.add_argument('--build-tools', type=Path, required=True,
                        help='Android SDK build-tools directory with zipalign/apksigner')
    parser.add_argument('--keystore', type=Path, required=True)
    parser.add_argument('--ks-pass-env', default='YOUTUBE_KEYSTORE_PASSWORD')
    parser.add_argument('--side-by-side', action='store_true',
                        help='Use com.joon.youtube.emulator instead of Google package')
    parser.add_argument('--skip-nettv-fallback', action='store_true',
                        help='Do not disable unsupported L1 aliases on ARMv7')
    args = parser.parse_args()
    pinned = json.loads((CUSTOM / 'upstream-inputs.json').read_text())
    digest = hashlib.sha256(args.apk.read_bytes()).hexdigest()
    if digest != pinned['apks'][args.abi]['sha256']:
        parser.error('APK differs from the pinned upstream input; refusing to patch')
    if not os.environ.get(args.ks_pass_env):
        parser.error(f'Set {args.ks_pass_env} to the signing-key password')
    work = CUSTOM / 'work' / args.abi
    decoded = work / 'decoded'
    work.mkdir(parents=True, exist_ok=True)
    run('apktool', 'd', '-f', args.apk.resolve(), '-o', decoded)
    shutil.copy2(CUSTOM / 'patches/AndroidManifest.xml', decoded / 'AndroidManifest.xml')
    manifest_path = decoded / 'AndroidManifest.xml'
    tree = ET.parse(manifest_path)
    manifest = tree.getroot()
    manifest.set(ANDROID + 'versionName', '2.0.3-joon.1')
    if args.side_by_side:
        package = 'com.joon.youtube.emulator'
        manifest.set('package', package)
        for provider in manifest.findall('application/provider'):
            if provider.get(ANDROID + 'name') == 'androidx.core.content.FileProvider':
                provider.set(ANDROID + 'authorities', package + '.fileprovider')
    tree.write(manifest_path, encoding='utf-8', xml_declaration=True)
    # Apktool's versionInfo overrides the manifest when linking resources.
    config = decoded / 'apktool.yml'
    config.write_text(config.read_text().replace('versionName: 2.0.3\n',
                                               'versionName: 2.0.3-joon.1\n'))
    target = decoded / 'smali_classes2/dev/cobalt/coat/CobaltActivity.smali'
    if not target.exists():
        raise RuntimeError('Pinned APK layout changed: CobaltActivity.smali missing')
    shutil.copy2(CUSTOM / 'patches/CobaltActivity.smali', target)
    resources = ROOT / 'cobalt/shell/android/java/res'
    for pattern in ('drawable*/app_banner.png', 'mipmap*/ic_app.png'):
        for asset in resources.glob(pattern):
            destination = decoded / 'res' / asset.relative_to(resources)
            destination.parent.mkdir(parents=True, exist_ok=True)
            # Upstream APK resources can be extensionless. Remove the old
            # resource with the same Android name before adding its PNG.
            for old in destination.parent.iterdir():
                if old.name == asset.stem or old.stem == asset.stem:
                    old.unlink()
            shutil.copy2(asset, destination)
    library = decoded / 'lib' / args.abi / 'libchrobalt.so'
    if not library.exists():
        raise RuntimeError('APK does not contain the requested ABI')
    if args.abi == 'armeabi-v7a' and not args.skip_nettv_fallback:
        data = library.read_bytes()
        for old, new, count in ((b'com.widevine.alpha\0', b'com.widevine.alphX\0', 4),
                                (b'com.widevine\0', b'com.widevinX\0', 1)):
            if data.count(old) != count or len(old) != len(new):
                raise RuntimeError('Unexpected native layout; refusing binary patch')
            data = data.replace(old, new)
        library.write_bytes(data)
    unsigned = work / 'unsigned.apk'
    aligned = work / 'aligned.apk'
    run('apktool', 'b', decoded, '-o', unsigned)
    run(args.build_tools / 'zipalign', '-f', '4', unsigned, aligned)
    output_dir = CUSTOM / 'out'
    output_dir.mkdir(exist_ok=True)
    suffix = '-side-by-side' if args.side_by_side else ''
    output = output_dir / f'youtube-{args.abi}{suffix}.apk'
    run(args.build_tools / 'apksigner', 'sign', '--ks', args.keystore.resolve(),
        '--ks-pass', f'env:{args.ks_pass_env}', '--out', output, aligned)
    run(args.build_tools / 'apksigner', 'verify', output)
    print(f'Built and signature-verified: {output}')


if __name__ == '__main__':
    main()
