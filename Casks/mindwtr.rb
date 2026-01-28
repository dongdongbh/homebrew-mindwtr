cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "ec0e712e2d8e3061d44b2de45b552e01eabdfc6b7978316d8d5e1cbc83dd2644",
         intel: "257b7577b420baa43d6d180f41fa9638584691828b9db40a033773c79eb39b79"

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
