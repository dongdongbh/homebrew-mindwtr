cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.9"
  sha256 arm:   "b910d94d32109c076c429134cf428d3e9b03dc2a26eb326ef422aade48c39f03",
         intel: "c14c515452a1b3000d951417b6a5c7decfb46035702419965701608730ed64a0"

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
