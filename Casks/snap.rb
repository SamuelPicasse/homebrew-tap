# Homebrew cask template; Scripts/bundle.sh --release fills in version/sha256 and pushes it
# to SamuelPicasse/homebrew-tap. Install: brew install --cask samuelpicasse/tap/snap
cask "snap" do
  version "0.5.2"
  sha256 "6fef4bba37ee43cd43ad8962c5df4f6055a392d1269fbeb2aca7c9516b03acb6"

  url "https://github.com/SamuelPicasse/snap/releases/download/v#{version}/Snap.zip"
  name "Snap"
  desc "Tiny screenshot tool: capture, annotate, beautify, copy"
  homepage "https://github.com/SamuelPicasse/snap"

  auto_updates true # Snap updates itself from GitHub Releases
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Snap.app"

  zap trash: "~/Library/Preferences/local.sammy.snap.plist"
end
