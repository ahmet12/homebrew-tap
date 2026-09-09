cask "branchline" do
  version "0.3.0,7"
  sha256 "a789d5b29f21d70e1cb944a65824b13fa8127146d4f4910b3356e79342c60d92"

  url "https://github.com/ahmet12/branchline-releases/releases/download/v0.3.0/Branchline-0.3.0-7.dmg"
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
