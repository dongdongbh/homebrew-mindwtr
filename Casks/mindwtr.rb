cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.7"
  sha256 arm:   "13adcbfcc48de7ea7d2226d45d42f8a8587e72c91a1759eb36d62e63e122d245",
         intel: "f55d26e59717567d959b439f4c7a889e010930b903347916745877c8d0a83cbe"

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
