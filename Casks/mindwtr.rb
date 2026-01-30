cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "3ae82df4c51d49f049744c5aa794d3a63f57b5cc4203f07525db9fa115c0e9c6",
         intel: "8f52ee18375198aa1a1a84652e3c396032d22f11a9fada886ecf3855a1746d39"

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
