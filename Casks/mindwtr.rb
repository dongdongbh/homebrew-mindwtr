cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "c8b33f29aa0a4fed944c9b747a688fada30dbf98eb3484293d0dc3e2c0406f88",
         intel: "677898c6bb758273eb5b70380615193b0c5eba360bbb276f665e3519505d63fd"

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
