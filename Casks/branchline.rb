cask "branchline" do
  version "0.2.0,6"
  sha256 "5f85f157ff9b7c59d818b50a360af247d779e248e6b077b7c83df7641aeb6304"

  url "https://github.com/ahmet12/branchline-releases/releases/download/v0.2.0/Branchline-0.2.0-6.dmg"
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
