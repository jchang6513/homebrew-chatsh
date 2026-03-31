cask "chatsh" do
  version "0.1.18"
  sha256 "5fa777929484f4b18a4bb2f2dd7e3369ae7a5ee0b5aec3828ec4a6acfb49144f"

  url "https://github.com/jchang6513/chatsh/releases/download/v#{version}/chat.sh_#{version}_aarch64.dmg"
  name "chat.sh"
  desc "Terminal-native AI Pane manager"
  homepage "https://chatsh-terminal.vercel.app"

  app "chat.sh.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-cr", "#{appdir}/chat.sh.app"],
      sudo: false
  end
end
