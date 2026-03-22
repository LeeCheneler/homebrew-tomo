class Tomo < Formula
  desc "Terminal-native AI chat client — local-first, OpenAI-compatible"
  homepage "https://github.com/LeeCheneler/tomo"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LeeCheneler/tomo/releases/download/v0.4.1/tomo-darwin-arm64.zip"
      sha256 "d10320b4c52f5a498905ea6ea9029c835e03180d8a1e41c1dfed8682b6a2232f"
    end
  end

  def install
    bin.install "tomo"
  end

  test do
    assert_predicate bin/"tomo", :executable?
  end
end
