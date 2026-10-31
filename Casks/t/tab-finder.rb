cask "tab-finder" do
  version "2.1.19"
  sha256 :no_check

  url "https://macplus-software.com/downloads/Tab%20Finder.zip",
      verified: "macplus-software.com/downloads/"
  name "Tab Finder"
  desc "Search and switch between open browser tabs"
  homepage "https://noteifyapp.com/tab-finder/"

  livecheck do
    url "https://macplus-software.com/downloads/Tab%20Finder%202.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tab Finder 2.app"

  zap trash: [
    "~/Library/Application Support/com.macplus-software.com.Tab-Finder-2-Direct",
    "~/Library/Caches/com.macplus-software.com.Tab-Finder-2-Direct",
    "~/Library/HTTPStorages/com.macplus-software.com.Tab-Finder-2-Direct",
    "~/Library/Preferences/com.macplus-software.com.Tab-Finder-2-Direct.plist",
  ]
end
