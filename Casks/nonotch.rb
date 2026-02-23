cask "nonotch" do
  version "1.0.25"
  sha256 "96a61fa81fe13a37e6a60fb5d26e19c7dc0490b5cd815ff4c7a59ea6c555bdf3"

  url "https://github.com/box-kr/no_notch/releases/download/v#{version}/NoNotch-#{version}.zip"
  name "NoNotch"
  desc "macOS Menu Bar Utility for hiding the notch"
  homepage "https://github.com/box-kr/no_notch"

  app "NoNotch.app"

  # 다운로드 후 Gatekeeper에서 '손상된 앱'으로 인식되는 것을 방지합니다.
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/NoNotch.app"],
                   sudo: false,
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Preferences/com.box-kr.NoNotch.plist",
  ]
end
