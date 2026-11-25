cask "apargon" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "fe5352ede1329f6cf7f575bab58208958025ea0ca092d6b399bbecbcd52dcdff",
         intel: "f49d1048c4d8fbdba63805e7c2f5497b34e1b2545dec9a17b2f018f616bb4bd9"

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
