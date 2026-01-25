cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "28bf5f3b883d65fff675d04cd479ea969c99ff25b9e5cfa08009166689601df6",
         intel: "735a5965a939dd49705631b18b11762147e84e2d9d4a30edab0087919ac41c30"

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
