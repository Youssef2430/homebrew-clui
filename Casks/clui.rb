cask "clui" do
  arch arm: "arm64", intel: ""
  folder = on_arch_conditional arm: "-arm64", intel: ""

  version "0.1.17"
  sha256 arm:   "0b3fe6b0ac7df5d633b552b0d177848b00174258a20f4c477dc45adf81ffe0b2",
         intel: "2b1accad204693b1a54e12a536f3e1a894c6f19c0c8c1bdade69809a77040829"

  url "https://github.com/Youssef2430/clui/releases/download/v#{version}/Clui-#{version}#{folder}.dmg"
  name "Clui"
  desc "Desktop UI for Claude Code"
  homepage "https://github.com/Youssef2430/clui"

  depends_on macos: ">= :ventura"

  app "Clui.app"

  zap trash: [
    "~/Library/Application Support/Clui",
    "~/Library/Preferences/com.clui.app.plist",
    "~/Library/Caches/com.clui.app",
  ]
end
