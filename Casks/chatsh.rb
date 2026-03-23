cask "chatsh" do
  version "0.1.14"
  sha256 "a2d6907c0ae1569c7beb37599a1fe789452f5e760eaf7defb1b01ba0a9e84e52"

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
