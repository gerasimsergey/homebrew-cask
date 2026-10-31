cask "supertab" do
  version "1.2"
  sha256 :no_check

  url "https://macplus-software.com/downloads/SuperTab%207.zip",
      verified: "macplus-software.com/downloads/"
  name "SuperTab"
  desc "App, window, clipboard and file switcher"
  homepage "https://noteifyapp.com/supertab/"

  livecheck do
    url "https://macplus-software.com/downloads/SuperTab%207.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SuperTab 7.app"

  zap trash: [
    "~/Library/Application Support/com.macplus-software.com.SuperTab-7",
    "~/Library/Caches/com.macplus-software.com.SuperTab-7",
    "~/Library/HTTPStorages/com.macplus-software.com.SuperTab-7",
    "~/Library/Preferences/com.macplus-software.com.SuperTab-7.plist",
  ]
end
