cask "apargon" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "08eb4c7e14ed4daa5464d4ad56e0fb1c297187f54b7c479afee2a0ebe3f54f36",
         intel: "660070182e322dc928114a3ded4460a86b7cc83dd2f68939847b52c7cb4d17da"

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
