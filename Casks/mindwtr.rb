cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.8"
  sha256 arm:   "aac053161e20bb37d2173fdc6e958a69ab37aa78c586f2d89b0e8b83a8a61866",
         intel: "961f5baee29b4e4f9cec722468bfec430a27733ac1d79fa4eebc6065cb3dd623"

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
