# Validation

2026-10-25: rebuilt both pinned upstream ARMv7 and ARM64 APKs using
`joon/scripts/rebuild.py`, Apktool 3.0.3, Java 17 and Android build-tools
36.1.0. Both builds completed and passed `apksigner verify`.

Output package: `com.google.android.youtube.tv`; label: `YouTube`;
version: `2.0.3-joon.1`. Input hashes are checked before patching.

The deployment recipe reproduces the working branding, alias metadata and
cold-start deep-link smali patch. ARMv7 retains the supported L3 alias while
disabling unsupported L1 aliases. The ineffective updater injection and failed
audio experiments are omitted. These fresh repository builds have not been
installed on the physical box; its working installation remains unchanged.

Historical device verification: the preceding deployment played video/audio on
NetTV; firmware YouTube remote-button launch and cold/warm video deep links
worked. Original Hindi audio was restored through YouTube preferred languages
and an app restart. The ARM64 emulator variant loaded onboarding and TizenTube
settings; emulator video playback was not verified.

Full Cobalt native source compilation has not been performed for this fork.
