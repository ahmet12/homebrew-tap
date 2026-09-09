cask "branchline" do
  version "0.4.1,10"
  sha256 "30972cac6bcaf2871cb353706e724f904206051724c934d9a1d67b1e359d7966"

  url "https://github.com/ahmet12/branchline-releases/releases/download/v0.4.1/Branchline-0.4.1-10.dmg"
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
