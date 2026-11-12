cask "apargon" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "b49c43a55eab8a4447a60a3882e547762f12cf17b066ca86c5671f5b289b3d27",
         intel: "46150348091654180afbcd4546f898861ab4d93931ee543aaad756438bd757b6"

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
