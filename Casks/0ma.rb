cask "0ma" do
  version "0.6.0"

  on_arm do
    sha256 "ac27f30abc54e2b9cbb37f0ce4020258e3d577c8afa077ee5b064ea9c1c2feff"

    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "806f36423394c4a90d8546e81a28aec09f09a9a0cc0f7bee7e8955f0c48f9ced"

    url "https://github.com/chenhunghan/0ma/releases/download/v#{version}/0ma_#{version}_x64.dmg"
  end

  name "0ma"
  desc "Desktop GUI for managing Lima instances and Kubernetes clusters"
  homepage "https://github.com/chenhunghan/0ma"

  depends_on :macos

  app "0ma.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/0ma.app"]
  end
end
