cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.4"
  sha256 arm:   "ff526931e4ed8e52fd394bcb8c2809974c4aee3c8c4fa5d7cde8669608cc2266",
         intel: "489536ac907e4b433feb78b1ea377f2738e738bf6751b1f2fff3d7e1d1a5f398"

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
