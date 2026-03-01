cask "0ma" do
  version "0.4.5"

  on_arm do
    sha256 "ab2a5e9dc027c848f4de3700753eacd1fbe09167671a2639d6b539515c562b81"
    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0a703646aa29930c943d35e1cbd0462b2f440dbea8919546eee257d5241a6aa8"
    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_x64.dmg"
  end

  name "0ma"
  desc "Desktop GUI for managing Lima instances and Kubernetes clusters"
  homepage "https://github.com/chenhunghan/0ma"

  app "0ma.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/0ma.app"
  end
end
