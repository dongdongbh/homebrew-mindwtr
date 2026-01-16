cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "d49e4cdf4e3a1eb450fc378e14921ce86824c7d788d58f04136f8c158fc6a957",
         intel: "e28731a1d8b291201c1e9204999c6b86485ccb962c3fb2ac96f8f86d8fe3d9e0"

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
