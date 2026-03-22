cask "sessiondock" do
  version "0.1.0"
  sha256 "228c1ec0186f94c41e1219fad55ef3541d109f43000b04d20caf421e684e3071"

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
