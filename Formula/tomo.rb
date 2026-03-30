class Tomo < Formula
  desc "Terminal-native AI chat client — local-first, OpenAI-compatible"
  homepage "https://github.com/LeeCheneler/tomo"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LeeCheneler/tomo/releases/download/v0.13.0/tomo-darwin-arm64.zip"
      sha256 "4042138fa494994310e0c726270d3d0a8f1d7339de7affb3ef0896ef8f24f56f"
    end
  end

  def install
    bin.install "tomo"
  end

  test do
    assert_predicate bin/"tomo", :executable?
  end
end
