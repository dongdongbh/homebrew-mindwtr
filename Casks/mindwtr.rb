cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.13"
  sha256 arm:   "3e85d31f987102e134f0914960e33708369fbef232c4ffbf40e7ac6ca959b75b",
         intel: "a5ba437527a2d093bf0cb4629d21623f010935e86a7146e6dd58e476b0c3290f"

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
