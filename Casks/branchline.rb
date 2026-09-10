cask "branchline" do
  version "0.4.2,11"
  sha256 "609f4e168045286bd50ce3dace87491e816b04346860b7f338ee34cf4fc959a9"

  url "https://github.com/ahmet12/branchline-releases/releases/download/v0.4.2/Branchline-0.4.2-11.dmg"
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
