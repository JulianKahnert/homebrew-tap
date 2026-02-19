cask "headsupkit" do
  version "0.1.1"
  sha256 "561b62a1bcac844e6ce3e93a998a27931368a6808f92ec38dc73ddd28d3dafa3"

  url "https://github.com/JulianKahnert/HeadsUpKit/releases/download/#{version}/HeadsUpKit-#{version}.zip"
  name "HeadsUpKit"
  desc "macOS menu bar app that shows upcoming calendar events as a fullscreen overlay"
  homepage "https://github.com/JulianKahnert/HeadsUpKit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"
  app "HeadsUpKit.app"

  zap trash: [
    "~/Library/Preferences/de.juliankahnert.HeadsUpKit.plist",
  ]
end
