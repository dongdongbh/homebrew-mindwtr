cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.8"
  sha256 arm:   "ac8c1db7ee4ff2b84ccfac50e494f0cae5cc562cb740068c80ff475752a46b59",
         intel: "50784f75b56dcdff5ea6477ca689945af272424c251ec1fc00005fa0e26771af"

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
