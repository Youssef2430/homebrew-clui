cask "clui" do
  arch arm: "arm64", intel: ""
  folder = on_arch_conditional arm: "-arm64", intel: ""

  version "0.1.10"
  sha256 arm:   "3335b5f3233524c6b4825de7a34b239b4eee2f909358011f13f40c49f4bbe73c",
         intel: "eaa7aa332d3a8ccb0660ab998a7e677541427cdc5e3953f4aaa6933f818e5291"

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
