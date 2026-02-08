cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.9"
  sha256 arm:   "e25de4d08ee4635f3369ef158bf3dfa13eece0d22d58e05e3f316d6693080af3",
         intel: "551e6c7a3de713ef5de746e9c318c637bbf740544f62a237bb5a84c22b6aa327"

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
