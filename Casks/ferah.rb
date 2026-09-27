cask "ferah" do
  version "0.3.0"
  sha256 "3fdbb12be884ed3c8863ebdc543174ecc42c31a894ced11d66cd90f86f2df43b"

  url "https://github.com/vhurkus/ferah/releases/download/v#{version}/Ferah-#{version}.dmg"
  name "Ferah"
  desc "Mac cleaner and app uninstaller that only moves files to the Trash"
  homepage "https://github.com/vhurkus/ferah"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Ferah.app"

  zap trash: [
    "~/Library/Caches/dev.huseyinyucel.ferah",
    "~/Library/HTTPStorages/dev.huseyinyucel.ferah",
    "~/Library/Preferences/dev.huseyinyucel.ferah.plist",
    "~/Library/Saved Application State/dev.huseyinyucel.ferah.savedState",
  ]
end
