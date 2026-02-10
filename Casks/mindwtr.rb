cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.11"
  sha256 arm:   "6263282a38d173c26b268d86c1e8c4ca8dfba1051adb6bc9be643498cb2a6c3a",
         intel: "142e0aa05261014effc4280847f9a8d57117f1e611840ef0a5cb1aaf80a6923e"

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
