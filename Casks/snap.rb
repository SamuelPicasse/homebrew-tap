# Homebrew cask template; Scripts/bundle.sh --release fills in version/sha256 and pushes it
# to SamuelPicasse/homebrew-tap. Install: brew install --cask samuelpicasse/tap/snap
cask "snap" do
  version "0.5.0"
  sha256 "ffab1501fe995b75c74dd6361b98fb981f7685011cff5a3f22d1db268bc92251"

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
