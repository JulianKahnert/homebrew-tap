cask "headsupkit" do
  version "0.2.0"
  sha256 "e5787420508aa57e0ea13f00055154e094933c1c1a76c26d18bcdb749b167db4"

  url "https://github.com/JulianKahnert/HeadsUpKit/releases/download/#{version}/HeadsUpKit-#{version}.zip"
  name "HeadsUpKit"
  desc "macOS menu bar app that shows upcoming calendar events as a fullscreen overlay"
  homepage "https://github.com/JulianKahnert/HeadsUpKit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  app "HeadsUpKit.app"

  zap trash: [
    "~/Library/Preferences/de.juliankahnert.HeadsUpKit.plist",
  ]
end
