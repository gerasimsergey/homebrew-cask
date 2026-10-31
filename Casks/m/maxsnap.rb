cask "maxsnap" do
  version "1.9.1"
  sha256 :no_check

  url "https://macplus-software.com/downloads/MaxSnap.zip",
      verified: "macplus-software.com/downloads/"
  name "MaxSnap"
  desc "Window manager"
  homepage "https://noteifyapp.com/maxsnap/"

  livecheck do
    url "https://macplus-software.com/downloads/MaxSnap.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "MaxSnap.app"

  zap trash: [
    "~/Library/Application Support/com.sergey-gerasimenko.MaxSnap",
    "~/Library/Caches/com.sergey-gerasimenko.MaxSnap",
    "~/Library/HTTPStorages/com.sergey-gerasimenko.MaxSnap",
    "~/Library/Preferences/com.sergey-gerasimenko.MaxSnap.plist",
  ]
end
