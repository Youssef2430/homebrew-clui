cask "clui" do
  arch arm: "arm64", intel: ""
  folder = on_arch_conditional arm: "-arm64", intel: ""

  version "0.1.8"
  sha256 arm:   "2dfb2f0ef08874d239188c6d589dc1269d8513268dd9df3f2170050295cab9b1",
         intel: "65bcdae2cf106703b80b001e2ec575f33134d615629ecb0ff47dc0a0fbf9a3aa"

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
