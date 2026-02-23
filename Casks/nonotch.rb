cask "nonotch" do
  version "1.0.7"
  sha256 "29a9a94d39dd8224a9d28c01ca720463037797159765d3d89cde2014a3c15855"

  url "https://github.com/box-kr/no_notch/releases/download/v#{version}/NoNotch-#{version}.zip"
  name "NoNotch"
  desc "macOS Menu Bar Utility for hiding the notch"
  homepage "https://github.com/box-kr/no_notch"

  app "NoNotch.app"

  zap trash: [
    "~/Library/Preferences/com.box-kr.NoNotch.plist",
  ]
end
