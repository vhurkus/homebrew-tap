cask "ferah" do
  version "0.3.1"
  sha256 "47dfd053b5e440f7fbd9a61923e408f8e346ff4470521fc10d89aaf4f8653e65"

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
