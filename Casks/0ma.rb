cask "0ma" do
  version "0.2.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_aarch64.dmg"
  name "0ma"
  desc "A Tauri App"
  homepage "https://github.com/chenhunghan/0ma"

  depends_on arch: :arm64

  app "0ma.app"
end
