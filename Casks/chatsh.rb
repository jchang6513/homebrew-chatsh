cask "chatsh" do
  version "0.1.2"
  sha256 "7a32aa8ef7dbf8aed0a6d41cb01682e3b38d33572a556070fc530474e3cc9504"

  url "https://github.com/jchang6513/chatsh/releases/download/v#{version}/chatsh_#{version}_aarch64.dmg"
  name "chat.sh"
  desc "Terminal-native desktop app for managing multiple AI REPL sessions"
  homepage "https://chatsh-terminal.vercel.app"

  app "chat.sh.app"

  zap trash: [
    "~/.chatsh",
    "~/Library/WebKit/chatsh",
  ]
end