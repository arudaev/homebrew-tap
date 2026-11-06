# Homebrew tap for Duckwalk

[Duckwalk](https://github.com/arudaev/duckwalk) turns a Flipper Zero into Harold, a rubber debugging duck who keeps your computer awake. This tap installs its desktop app on macOS: a small menu bar app that tells the Flipper when you use your own mouse or keyboard, so Harold never moves the pointer while you work.

```bash
brew install --HEAD arudaev/tap/duckwalk
duckwalk
```

Until Duckwalk v0.1 is released, the formula builds the latest code (`--HEAD`). After that, `brew install arudaev/tap/duckwalk` installs the release.

Homebrew builds the app on your Mac from source, so macOS doesn't flag it as a download from an unknown developer. The first time, allow **Input Monitoring** when macOS asks (System Settings > Privacy & Security > Input Monitoring), then start `duckwalk` again.

**Update:** `brew upgrade --fetch-HEAD duckwalk`
**Remove:** untick *Start at login* in Harold's menu, quit, then `brew uninstall duckwalk`

The app's own guide: [desktop/app/README.md](https://github.com/arudaev/duckwalk/blob/main/desktop/app/README.md). Issues go to the [Duckwalk repository](https://github.com/arudaev/duckwalk/issues).
