cask "headsupkit" do
  version "0.3.3"
  sha256 "c28cbce1963590debdd8a39d08e7036cf45e171a16f0d2fd1859a7b5d3547a65"

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
