cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.7"
  sha256 arm:   "67e24ae0fd028dead29220c2ade9524f8f3c441bfa7015e01751c7427d131235",
         intel: "23a7a6272a9a7f23508e6331990a3ccb9a6bc43e6efdc5efbd6cbe62a77bfad8"

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
