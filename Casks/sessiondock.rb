cask "sessiondock" do
  version "0.1.0"
  sha256 "24979ddf8351b131118f3598654f6d1c2bd3e6fbefaa47691a6c8c39346f31d0"

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
