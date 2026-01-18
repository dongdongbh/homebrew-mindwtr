cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "afc775208b72f3022b4c59093c19fb0ab98d74bdf2cf3ecc06b054fcca9b781d",
         intel: "84ff6ffb1fa3737c4650ab2369a858365d923cff9d8353da93b7008b49ad659e"

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
