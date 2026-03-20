cask "chatsh" do
  version "0.1.0"
  sha256 "7161d55c3e6e954430dd371e98d9de4eb408bb90a9f6c4057a5e67f305801131"

  url "https://github.com/jchang6513/chatsh/releases/download/v#{version}/chatsh_#{version}_aarch64.dmg"
  name "chat.sh"
  desc "Terminal-native desktop app for managing multiple AI coding assistants"
  homepage "https://github.com/jchang6513/chatsh"

  app "chat.sh.app"
end
