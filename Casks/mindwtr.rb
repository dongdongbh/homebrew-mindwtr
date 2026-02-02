cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.6"
  sha256 arm:   "e9b2c7eed6841aae78a8d113eb3b08e7f7a47af3ad3e433a3865d44d0eb6f454",
         intel: "45d48334e4cec848906358c02f5ab701efbc53da3b1a659ca02d56cbfff58d0d"

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
