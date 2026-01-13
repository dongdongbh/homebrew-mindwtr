cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "266fb3c06b9b45939dfba9864b6fa79b88ab5dbaa070cf8b997767ba0493f7ce",
         intel: "2162f09faf820de83d6b909ac9ad062b6515e638261919e82a0ff2c7e1cdc7ed"

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
