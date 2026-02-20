cask "headsupkit" do
  version "0.3.0"
  sha256 "61d2b3703deaeea7832d9a5f8b6e52ac6149adcf4223618270df1f2b8567ddc8"

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
