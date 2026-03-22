cask "chatsh" do
  version "0.1.10"
  sha256 "c915760843fef3177c6b12776041c3c872ee093d9da1d30a9cc04f59cbd2eed0"

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
