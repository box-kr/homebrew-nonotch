cask "nonotch" do
  version "1.0.16"
  sha256 "981b249aca694d8e5ecc1e86386508021949af596ae5c71eee6faa77c941341b"

  url "https://github.com/box-kr/no_notch/releases/download/v#{version}/NoNotch-#{version}.zip"
  name "NoNotch"
  desc "macOS Menu Bar Utility for hiding the notch"
  homepage "https://github.com/box-kr/no_notch"

  app "NoNotch.app"

  zap trash: [
    "~/Library/Preferences/com.box-kr.NoNotch.plist",
  ]
end
