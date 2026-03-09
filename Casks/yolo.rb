cask "yolo" do
  version "0.3.0"

  on_arm do
    sha256 "769ac8414bf079575122084d7f9f9e83d27fc0dc777aeabf2ef3f19224a0cf07"
    url "https://github.com/chenhunghan/yolo/releases/download/v#{version}/yolo_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e1ee5c3328ab72dbeba9c9a5a49e363a73fc05d61867da1cdf92fa26b287edbe"
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
