class Tomo < Formula
  desc "Terminal-native AI chat client — local-first, OpenAI-compatible"
  homepage "https://github.com/LeeCheneler/tomo"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LeeCheneler/tomo/releases/download/v0.7.0/tomo-darwin-arm64.zip"
      sha256 "c084f0e030baadb7d934b6a3492628d08626d8662ee01f852eee85a0c54f7f3e"
    end
  end

  def install
    bin.install "tomo"
  end

  test do
    assert_predicate bin/"tomo", :executable?
  end
end
