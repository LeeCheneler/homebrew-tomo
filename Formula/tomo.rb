class Tomo < Formula
  desc "Terminal-native AI chat client — local-first, OpenAI-compatible"
  homepage "https://github.com/LeeCheneler/tomo"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LeeCheneler/tomo/releases/download/v0.15.0/tomo-darwin-arm64.zip"
      sha256 "58c692bf81658cc5e641d1fac79fdf3bcf64415216f436956922a8a14943a3e0"
    end
  end

  def install
    bin.install "tomo"
  end

  test do
    assert_predicate bin/"tomo", :executable?
  end
end
