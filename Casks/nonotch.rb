cask "nonotch" do
  version "1.0.9"
  sha256 "5028cf6d2b11fc04970a901d7a9d2b16b9c93d37c9129eef2805bd1dabfa48ef"

  url "https://github.com/box-kr/no_notch/releases/download/v#{version}/NoNotch-#{version}.zip"
  name "NoNotch"
  desc "macOS Menu Bar Utility for hiding the notch"
  homepage "https://github.com/box-kr/no_notch"

  app "NoNotch.app"

  zap trash: [
    "~/Library/Preferences/com.box-kr.NoNotch.plist",
  ]
end
