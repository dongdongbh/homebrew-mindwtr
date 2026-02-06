cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.8"
  sha256 arm:   "bac852ac32f258934c93a9f73bc370d170419b6eb04711c3f8ef2b9d99cdb7e2",
         intel: "18e0bada30d072a398213438a6ffecc062335c326a0565b7e2f51772f8c2d94f"

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
