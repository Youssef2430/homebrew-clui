cask "clui" do
  arch arm: "arm64", intel: ""
  folder = on_arch_conditional arm: "-arm64", intel: ""

  version "0.1.7"
  sha256 arm:   "9ba41a04727a4cd36e815766e22af3dafc3daa874c2fbda015ad4f8437abcd7e",
         intel: "378a48240fc282f8a3d7abdf9f3bdade0cc9b690ca8406393b588ac0c6aaeeb6"

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
