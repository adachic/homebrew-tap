cask "sessiondock" do
  version "0.1.0"
  sha256 "e96a06387a2b40517f2526b352a3e56a4c103dbaa66e7ccb9d842633415c4e1e"

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
