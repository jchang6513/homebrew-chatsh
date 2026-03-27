cask "chatsh" do
  version "0.1.16"
  sha256 "d29a027ec75d14a349279efb6269b1622552924b1482e91f5f6bd48e72b2a2bd"

  url "https://github.com/jchang6513/chatsh/releases/download/v\#{version}/chat.sh_\#{version}_aarch64.dmg"
  name "chat.sh"
  desc "Terminal-native AI Pane manager"
  homepage "https://chatsh-terminal.vercel.app"

  app "chat.sh.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-cr", "\#{appdir}/chat.sh.app"],
      sudo: false
  end
end
