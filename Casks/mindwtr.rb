cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "24464bb184fec7b47b2f5c5b3f1ce78d98cdcc5ea3d6466819ac88a6271579e1",
         intel: "a5c1109e9ac6b1d9b5e557e47b879ebf6016158ee4b536436bd61700179a6fda"

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
