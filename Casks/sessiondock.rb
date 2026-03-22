cask "sessiondock" do
  version "0.1.0"
  sha256 "5a5422adb9728267b2a842ce68f11c992df1287c766d3f367858b5b2d95c62b4"

  url "https://github.com/adachic/sessiondock/releases/download/v#{version}/SessionDock_#{version}_aarch64.dmg"
  name "SessionDock"
  desc "Claude Code multi-session monitoring dashboard"
  homepage "https://adachic.github.io/sessiondock/"

  depends_on arch: :arm64

  app "SessionDock.app"

  zap trash: [
    "~/Library/Application Support/dev.sessiondock.app",
    "~/Library/Caches/dev.sessiondock.app",
  ]
end
