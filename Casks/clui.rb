cask "clui" do
  arch arm: "arm64", intel: ""
  folder = on_arch_conditional arm: "-arm64", intel: ""

  version "0.1.14"
  sha256 arm:   "752dd6fb9e7cdcd3993e6af8abc50445dce039a2a3ac93e2af1eb0c644ff0a6e",
         intel: "20e5565e34e0b53e6501b937b0349b90fbeb9476934d8b00e5d31d8c6a596d9f"

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
