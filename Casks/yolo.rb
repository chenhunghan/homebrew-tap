cask "yolo" do
  version "0.2.0"

  on_arm do
    sha256 "4cd1366052a596e92fde1e1512219e4edcc4a9c988b4ce0cde180cd9745a1edd"
    url "https://github.com/chenhunghan/yolo/releases/download/v#{version}/yolo_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ec4e8c7ec68348d38afcc1158d033683a44a6efa0f3f207b85a1988fa5b44b59"
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
