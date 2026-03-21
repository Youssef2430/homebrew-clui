cask "clui" do
  arch arm: "arm64", intel: ""
  folder = on_arch_conditional arm: "-arm64", intel: ""

  version "0.1.5"
  sha256 arm:   "5e4788aa3ed859de4aa51ab9a1f09c59b32afd2b8ae4cfdb78bafda195e30e24",
         intel: "038acf9dfcd8ef5bb5fd4ff475c0ab6420949707d99ca252eeeddb753ec2242c"

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
