cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.10"
  sha256 arm:   "d4ec18f851300a24133442286abd27e48e1a0d7b57bf9523213421789ed4021e",
         intel: "89435f74aa346a0ec01707f4aca81dde06cb1e6bf6066b70278566975645a7a1"

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
