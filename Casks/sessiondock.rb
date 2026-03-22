cask "sessiondock" do
  version "0.1.0"
  sha256 "a04afe86fd118b5c680d2feda635c0e80404a515ee737f3d5f1f5d792b26b44c"

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
