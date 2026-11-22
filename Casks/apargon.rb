cask "apargon" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "2a5815ec45b5731a037f37e397155cafc03ef6b7054a97cfacd058faafbb56ad",
         intel: "c36104564e1729117893fb9c0c35dfd6bb45fad5e537d41859d2f08c47370657"

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
