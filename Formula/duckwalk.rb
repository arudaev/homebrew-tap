# Duckwalk's desktop app, built from source on your Mac. Built locally, it
# carries no quarantine flag, so Gatekeeper doesn't stop it, and no Apple
# Developer account is needed to ship it.
class Duckwalk < Formula
  desc "Tray app that tells Duckwalk on a Flipper Zero when you're working"
  homepage "https://arudaev.github.io/duckwalk/"
  license "GPL-3.0-only"
  # Until v0.1 is tagged: brew install --HEAD arudaev/tap/duckwalk
  head "https://github.com/arudaev/duckwalk.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args(path: "desktop/app")
  end

  def caveats
    <<~EOS
      Start it with:
        duckwalk
      Harold appears in the menu bar, and Duckwalk starts at login from then
      on (his menu turns that off).

      The first time, macOS asks for Input Monitoring: allow it in
      System Settings > Privacy & Security > Input Monitoring, then start
      duckwalk again. It reads only that an input happened and from which
      device, never which keys.
    EOS
  end

  test do
    assert_match "Usage: duckwalk", shell_output("#{bin}/duckwalk --help")
  end
end
