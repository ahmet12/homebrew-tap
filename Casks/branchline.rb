cask "branchline" do
  version "0.1.0,5"
  sha256 "80f14bef6dcf93908b6e361238d16a17cf3b1042cbc43f837b4dacb36b8dd17b"

  url "https://github.com/ahmet12/branchline-releases/releases/download/v0.1.0/Branchline-0.1.0-5.dmg"
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
