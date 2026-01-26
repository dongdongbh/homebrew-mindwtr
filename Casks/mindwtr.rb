cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "e5d6fa0b04c1795e9742cfdddc4e3087f2ee3bdfd4495cf8f9cd0dbb5a69ec2f",
         intel: "fe5e5ac2b5000a9f85853e943644f9f6531dac80457cd2ff6c886c4f40ccefdd"

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
