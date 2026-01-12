cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "9d53add14bed50c6f5020cd024ce42dde8821c36aa4d686907a5458e7643c1b7",
         intel: "827722e8f0440cbaa3bdf05205d15b242f5be44c2e9c360167232d37666eff0e"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/Mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity system"
  homepage "https://github.com/dongdongbh/Mindwtr"

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/Mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
  ]
end
