cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.5"
  sha256 arm:   "aef2121a02550c50d6485d4c3caa772b4c90f08d537646619e610189c82fdf41",
         intel: "43b15a7165624a6669dd908e6ec6b9e40a8ccf52e2630d54a08e3efcd1f9f6e2"

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
