# YouTube Android TV — Joon's TizenTube Cobalt fork

Personal Android TV customizations of [TizenTube Cobalt](https://github.com/reisxd/TizenTubeCobalt), based on **v2.0.3** (`9809b5aae6d820c852bc6cf7095304fb1c92f31a`). Upstream source and history are retained. The original project description is in [joon/UPSTREAM_README.md](joon/UPSTREAM_README.md).

## Customizations

- App name **YouTube**, original-style YouTube launcher icons, and Android TV home tile/banner at multiple densities.
- Package **com.google.android.youtube.tv**, retaining existing launcher references.
- Original Google entry point **com.google.android.apps.youtube.tv.activity.ShellActivity** as an alias to Cobalt's main activity. Supports firmware that hardcodes the physical YouTube remote button. All six startup metadata entries are on the alias to prevent a stuck splash screen.
- Replay the initial video deep link once after splash completion, handling TizenTube's startup user-agent reload consuming the first link.
- Optional ARMv7 NetTV compatibility adjustment: disable unsupported Widevine L1 aliases while preserving the existing YouTube Widevine L3 alias. No changes to licenses, keys, device DRM configuration or firmware.
- ARM64 builds for Google TV emulators, with an optional separate package for side-by-side installation.

The TV tile is a launcher **banner**, not a dynamic recommendations channel. TizenTube ad blocking and SponsorBlock remain upstream functionality.

## Build the customized APK

The deployed builds were made by rebuilding upstream release APKs, **not by compiling the entire Cobalt native engine**. This fork includes source changes and a reproducible APK rebuild recipe. Native source compilation follows upstream documentation; these changes have not been validated with a full native build.

Requirements: Python 3, Java 17, Apktool 3.0.3, Android SDK build-tools 36.1.0, upstream v2.0.3 APK for your ABI, and your own signing keystore. Exact input SHA-256 values are in [joon/upstream-inputs.json](joon/upstream-inputs.json). Obtain inputs from [upstream v2.0.3](https://github.com/reisxd/TizenTubeCobalt/releases/tag/v2.0.3); binaries and private keys are not committed.

```sh
export JAVA_HOME=/path/to/jdk-17
export YOUTUBE_KEYSTORE_PASSWORD='your-local-key-password'
python3 joon/scripts/rebuild.py \
  --apk /path/to/cobalt-arm.apk \
  --abi armeabi-v7a \
  --build-tools /path/to/android-sdk/build-tools/36.1.0 \
  --keystore /path/to/your-signing-key.jks
```

For ARM64, use `--abi arm64-v8a --apk /path/to/cobalt-arm64.apk`. NetTV native fallback applies only to ARMv7; disable it with `--skip-nettv-fallback` when unnecessary. Use `--side-by-side` for package com.joon.youtube.emulator. Outputs go into `joon/out/`; intermediates go into `joon/work/`. The script verifies input hashes and output APK signatures; it does not install anything.

The `joon/patches/` manifest and CobaltActivity smali preserve the working APK changes. Source equivalents are in `cobalt/android/BUILD.gn`, `cobalt/shell/android/shell_apk/AndroidManifest.xml.jinja2`, and `cobalt/android/apk/app/src/main/java/dev/cobalt/coat/CobaltActivity.java`. Branding assets are under `cobalt/shell/android/java/res/`.

## Installation and settings

```sh
adb -s DEVICE_SERIAL install -r joon/out/youtube-armeabi-v7a.apk
```

An existing Google-signed YouTube cannot be updated with a locally signed APK. A preinstalled system copy can reserve its package/signature even after `pm uninstall --user 0`. The tested production Google TV emulator has this restriction and blocks root; use the side-by-side build there. Back up your current app before replacement. Future custom updates must use the same signing key.

- **Update checks:** turn off “Check for updates on startup” in TizenTube settings. No code-level update-check suppression is included.
- **Original audio:** use YouTube's preferred languages setting, then fully close and reopen the TV app. This restored original Hindi on the tested CID video. It is a YouTube preference, not an APK patch. [YouTube instructions](https://support.google.com/youtube/answer/13339776).
- **Known unresolved issue:** player controls can render incorrectly after pressing Right on NetTV. No fix is claimed here.

Unsuccessful audio-injection and local-userscript experiments are excluded. Signing keys, account/device data, backups, diagnostic logs and APK binaries are excluded.

## Attribution

Unofficial personal fork, not Google's official YouTube app. TizenTube Cobalt and Cobalt/Chromium retain upstream copyright and license notices; see [LICENSE](LICENSE) and individual source files. YouTube names and supplied branding assets belong to their respective owners and are not relicensed by this fork.
