cask "nonotch" do
  version "1.0.9"
  sha256 "412cbf3b2294e2f104bad14641abcc395e34b1762400136fb8b2ef0014b08d2a"

  url "https://github.com/box-kr/no_notch/releases/download/v#{version}/NoNotch-#{version}.zip"
  name "NoNotch"
  desc "macOS Menu Bar Utility for hiding the notch"
  homepage "https://github.com/box-kr/no_notch"

  app "NoNotch.app"

  zap trash: [
    "~/Library/Preferences/com.box-kr.NoNotch.plist",
  ]
end
