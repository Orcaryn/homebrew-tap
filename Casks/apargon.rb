cask "apargon" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "53384e379d190abc097eb99787593f88835a55142a81ad67e168cf8a49738e7a",
         intel: "91e0d78e45b5d424673b9c6d87bf4ba40c7c3a7d1d30774209fb7c8dfbb70323"

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
