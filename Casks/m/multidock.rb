cask "multidock" do
  version "2.11"
  sha256 :no_check

  url "https://macplus-software.com/downloads/MultiDock%202.zip",
      verified: "macplus-software.com/downloads/"
  name "MultiDock"
  desc "Extra panels for apps, files and folders"
  homepage "https://noteifyapp.com/multidock/"

  livecheck do
    url "https://macplus-software.com/downloads/MultiDock%202.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MultiDock 2.app"

  zap trash: [
    "~/Library/Application Support/com.sergiigerasimenko.MultiDock2",
    "~/Library/Caches/com.sergiigerasimenko.MultiDock2",
    "~/Library/HTTPStorages/com.sergiigerasimenko.MultiDock2",
    "~/Library/Preferences/com.sergiigerasimenko.MultiDock2.plist",
  ]
end
