cask "apargon" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "8933679defc3b2c7742f04de517131aa1cf6343c83e341525f0d4988cf02fa94",
         intel: "8bdeb9a453df9a9708fc4a150ded3e4a9004d11b4b9002c07603212c11a837a5"

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
