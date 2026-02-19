cask "headsupkit" do
  version "0.1.0"
  sha256 "164bef036c478f2be9c625b30c0eaa3ce87de1b75fea1b42bf75aff3cb08cf26"

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
