cask "glui" do
  on_arm do
    version "0.2.0"
    sha256 "66bb26eb0709fe180d97d983f2c5a4bb0cc7ab9b382d56b933a544e5b4712243"
    url "https://github.com/Youssef2430/glui/releases/download/v#{version}/GLUI-#{version}-arm64.dmg"
    app "GLUI.app"
  end

  on_intel do
    version "0.1.17"
    sha256 "2b1accad204693b1a54e12a536f3e1a894c6f19c0c8c1bdade69809a77040829"
    url "https://github.com/Youssef2430/glui/releases/download/v#{version}/Clui-#{version}.dmg"
    app "Clui.app"
    caveats "Intel support is deprecated. Clui v0.1.17 is the final Intel release."
  end

  name "GLUI"
  desc "Desktop UI for Claude Code, Codex, and OpenCode"
  homepage "https://github.com/Youssef2430/glui"

  depends_on macos: :ventura
  conflicts_with cask: "clui"

  zap trash: [
    "~/Library/Application Support/clui",
    "~/Library/Preferences/com.clui.app.plist",
    "~/Library/Caches/com.clui.app",
  ]
end
