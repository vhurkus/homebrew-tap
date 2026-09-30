cask "ferah" do
  version "0.4.0"
  sha256 "41770568b64d318d5ef27634bb42d21e50be4e2e65e52c1459af3689f0a1c4fd"

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
