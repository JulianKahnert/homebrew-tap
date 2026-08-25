cask "headsupkit" do
  version "0.4.1"
  sha256 "d3f4ab6073e24180542d771ccc68817ee61c5422a1be2d378b56520f6e35eb73"

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
