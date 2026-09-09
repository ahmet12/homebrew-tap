cask "branchline" do
  version "0.4.0,9"
  sha256 "c13d10727246c5b8a53d68085b1f966c8a8ba94dfed63a2be462a135d1de58ff"

  url "https://github.com/ahmet12/branchline-releases/releases/download/v0.4.0/Branchline-0.4.0-9.dmg"
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
