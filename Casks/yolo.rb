cask "yolo" do
  version "0.3.1"

  on_arm do
    sha256 "e4f1f3aaeb68702d02dd6d91e2234d086309c6a3abdef33b55bfd57d77ee1798"
    url "https://github.com/chenhunghan/yolo/releases/download/v#{version}/yolo_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a3256df19e7b9c96f733e8b856c0e33c7a724e41ceb49bcadca37ccdee26d8a5"
    url "https://github.com/chenhunghan/yolo/releases/download/v#{version}/yolo_#{version}_x64.dmg"
  end

  name "yolo"
  desc "Isolated Linux sandboxes for vibe coding with Claude Code"
  homepage "https://github.com/chenhunghan/yolo"

  app "yolo.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/yolo.app"
  end
end
