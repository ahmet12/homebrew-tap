cask "branchline" do
  version "0.3.1,8"
  sha256 "996b4a43bc79502f0b0b8dc3cf13c7695f61382a0f6a9434193f2499966a5dc7"

  url "https://github.com/ahmet12/branchline-releases/releases/download/v0.3.1/Branchline-0.3.1-8.dmg"
  name "Branchline"
  desc "Native Git client for macOS by Kylindravia"
  homepage "https://github.com/ahmet12/branchline-releases"

  auto_updates true
  conflicts_with cask: "branchline@beta"
  depends_on macos: :sonoma

  app "Branchline.app"

  caveats <<~EOS
    Branchline requires an individual activation. Downloading grants no usage rights.
    Close Branchline before a Homebrew upgrade. Repositories, drafts and activation
    are preserved when uninstalling.
  EOS
end
