cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.12"
  sha256 arm:   "508f407ccefdeeaa80126ca2d2cc2cef60da0d2092aef0b70889164b20a6684a",
         intel: "59ba77832c1fb9e503c6477de2730e45d47c40ef56ce040c31162e28e64a4e80"

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
