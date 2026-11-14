cask "apargon" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "2cf3bafad85419c3f9497dde06056cfc4f50bfe6b8036aeb29566f0a51507858",
         intel: "204bdef0fb12b0a39347788f4726301afac8dcbad90b7b13536feece7f5358a9"

  url "https://github.com/Orcaryn/Apargon/releases/download/v#{version}/Apargon-#{arch}.zip"
  name "Apargon"
  desc "Runs an HTML file as a desktop app with only the access its tags ask for"
  homepage "https://github.com/Orcaryn/Apargon"

  auto_updates true
  depends_on macos: :ventura

  app "Apargon.app"

  zap trash: [
    "~/Library/Application Support/apargon",
    "~/Library/Caches/com.hammer.apargon",
    "~/Library/Caches/com.hammer.apargon.ShipIt",
    "~/Library/HTTPStorages/com.hammer.apargon",
    "~/Library/HTTPStorages/com.hammer.apargon.binarycookies",
    "~/Library/Logs/apargon",
    "~/Library/Preferences/com.hammer.apargon.plist",
  ]
end
