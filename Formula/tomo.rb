class Tomo < Formula
  desc "Terminal-native AI chat client — local-first, OpenAI-compatible"
  homepage "https://github.com/LeeCheneler/tomo"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LeeCheneler/tomo/releases/download/v0.6.0/tomo-darwin-arm64.zip"
      sha256 "2620534b74fb01245c1165a7b59d0cbf3e005339e82eb1efd822e4c6f0db573d"
    end
  end

  def install
    bin.install "tomo"
  end

  test do
    assert_predicate bin/"tomo", :executable?
  end
end
