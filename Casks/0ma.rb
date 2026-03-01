cask "0ma" do
  version "0.3.0"

  on_arm do
    sha256 "9156024256fef07bbb5f64d8158b089df3278481a3d5be7f465c3c525bd91ae8"
    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "acdf7e63656d896268c0e1423c38606a4e61e2033db7d55d93301124642afa9b"
    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_x64.dmg"
  end

  name "0ma"
  desc "Desktop GUI for managing Lima instances and Kubernetes clusters"
  homepage "https://github.com/chenhunghan/0ma"

  app "0ma.app"
end
