# Homebrew cask template; Scripts/bundle.sh --release fills in version/sha256 and pushes it
# to SamuelPicasse/homebrew-tap. Install: brew install --cask samuelpicasse/tap/snap
cask "snap" do
  version "0.1.0"
  sha256 "ef467e0f188f7c07d88b13b498c161a7310021ffcc517433359d177fbd8086ae"

  url "https://github.com/SamuelPicasse/snap/releases/download/v#{version}/Snap.zip"
  name "Snap"
  desc "Tiny screenshot tool: capture, annotate, beautify, copy"
  homepage "https://github.com/SamuelPicasse/snap"

  auto_updates true # Snap updates itself from GitHub Releases
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Snap.app"

  zap trash: "~/Library/Preferences/local.sammy.snap.plist"
end
