cask "headsupkit" do
  version "0.3.4"
  sha256 "5b9e3d5e0987f4c8bfade5ea5941a0234450f72c807459a53568ed497a598281"

  url "https://github.com/JulianKahnert/HeadsUpKit/releases/download/#{version}/HeadsUpKit-#{version}.zip"
  name "HeadsUpKit"
  desc "Menu bar app that shows upcoming calendar events as a fullscreen overlay"
  homepage "https://github.com/JulianKahnert/HeadsUpKit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "HeadsUpKit.app"

  zap trash: "~/Library/Preferences/de.juliankahnert.HeadsUpKit.plist"
end
