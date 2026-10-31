cask "quick-expose" do
  version "3.0.3"
  sha256 :no_check

  url "https://macplus-software.com/downloads/QuickExpose3.zip",
      verified: "macplus-software.com/downloads/"
  name "Quick Exposé"
  desc "Window overview in the style of classic Exposé"
  homepage "https://noteifyapp.com/quick-expose/"

  livecheck do
    url "https://macplus-software.com/downloads/QuickExpose3.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Quick Exposé 3.app"

  zap trash: [
    "~/Library/Application Support/com.macplus-software.quick-expose-3",
    "~/Library/Caches/com.macplus-software.quick-expose-3",
    "~/Library/HTTPStorages/com.macplus-software.quick-expose-3",
    "~/Library/Preferences/com.macplus-software.quick-expose-3.plist",
  ]
end
