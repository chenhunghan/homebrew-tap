cask "0ma" do
  version "0.5.2"

  on_arm do
    sha256 "695a41b0e5711cc0c0315010079d112119c5193493e817ea9fcba72a1c14f236"
    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1f8cdde6d12cdf9c7bccfd3631623de35b7044e242dc2a27da718284cc23faf4"
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
