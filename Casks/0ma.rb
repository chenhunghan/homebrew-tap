cask "0ma" do
  version "0.4.0"

  on_arm do
    sha256 "57acdd607fc553464ba89163d10b8ab376490d3786b1e5689ef5dec3120362b8"
    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d029218e8f4a79c0f72bd9220693835d4c7aadc5bef1f9c423f56a9139a673f8"
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
