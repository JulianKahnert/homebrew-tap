cask "headsupkit" do
  version "0.4.0"
  sha256 "005f704a7330550402794503fa76c65f8cc92c609b5127c6a4f8308873df16cc"

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
