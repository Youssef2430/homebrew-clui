cask "clui" do
  arch arm: "arm64", intel: ""
  folder = on_arch_conditional arm: "-arm64", intel: ""

  version "0.1.6"
  sha256 arm:   "3f1e66152d725e910e710c4e9c11a7d6ed2b4e8ad418c1bd0ec532f6b2f4211a",
         intel: "e5de51eebfc1f21d4011312d090b6cb0c92f4e2edfad7c11be7b4bd66ecc9d0c"

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
