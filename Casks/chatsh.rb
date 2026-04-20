cask "chatsh" do
  version "0.1.20"
  sha256 "7001e233e4726b408d9058856cf05c50fa0286f6185aff5b26b59973602a5d00"

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
