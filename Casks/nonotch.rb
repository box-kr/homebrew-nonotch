cask "nonotch" do
  version "1.0.47"
  sha256 "22f087e9141c26aa3f49b33fed35a99e836e96e6daf467b380b3ae4f982ff76a"

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
