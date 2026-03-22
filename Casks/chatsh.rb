cask "chatsh" do
  version "0.1.12"
  sha256 "e6c5b831ea93afb85fe18a9c33c40b846fe33b5beb76a889084db28eb116deec"

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
