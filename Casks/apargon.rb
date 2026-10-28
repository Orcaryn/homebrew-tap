cask "apargon" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "2f9255a456f16e392274f5cf14b23adf8d1c3d1552cb7cef1f0c84ee9b186d46",
         intel: "77f9902116399ef42a5c86180a0da79e6f9ea257143c486cbc76c13bcb8c5c43"

  url "https://github.com/Orcaryn/Apargon/releases/download/v#{version}/Apargon-#{version}-#{arch}.zip"
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
