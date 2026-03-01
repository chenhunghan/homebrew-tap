cask "0ma" do
  version "0.4.2"

  on_arm do
    sha256 "8960ef8b27e064109419ad085f59c7b6e49c701bef9d80f43a47d315dd965f53"
    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7c2fe6cf82954c57823aeb4cd722b6c4fde6895c4cf937cd5cef8ecef26e00c4"
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
