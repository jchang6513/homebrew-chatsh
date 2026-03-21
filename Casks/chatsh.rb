cask "chatsh" do
  version "0.1.3"
  sha256 "fa15fbc493523ccfb9fff47d7e53b2828db389d221f42ce9771325c7734278a7"

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