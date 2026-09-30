cask "ferah" do
  version "0.4.1"
  sha256 "8163a8898ec1dd911fa1c87cd53128c6e04e6c2d317110949de09d58c787b378"

  url "https://github.com/vhurkus/ferah/releases/download/v#{version}/Ferah-#{version}.dmg"
  name "Ferah"
  desc "Mac cleaner and app uninstaller that only moves files to the Trash"
  homepage "https://github.com/vhurkus/ferah"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Ferah.app"

  zap trash: [
    "~/Library/Caches/dev.huseyinyucel.ferah",
    "~/Library/HTTPStorages/dev.huseyinyucel.ferah",
    "~/Library/Preferences/dev.huseyinyucel.ferah.plist",
    "~/Library/Saved Application State/dev.huseyinyucel.ferah.savedState",
  ]
end
