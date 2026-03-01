cask "0ma" do
  version "0.4.1"

  on_arm do
    sha256 "7956112581a77a01c610826684385cc00041c01329213bccfdcf8e265dce4ae8"
    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "75553cdcee72c4045ae8b7c05e200d04ea1c8fa28c790b6acf436d0aba629930"
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
