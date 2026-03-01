class Kibitz < Formula
  desc "Real-time decoded feed of AI agent actions — monitor Claude Code & Codex sessions"
  homepage "https://github.com/kibitzsh/kibitz"
  url "https://registry.npmjs.org/@kibitzsh/kibitz/-/kibitz-0.0.5.tgz"
  sha256 "5474a99a1aa3b8efb91d5c61fd6e0a4600cea0c5c6cb01623439ea61273703c2"
  license "MIT"

  depends_on "node"

  def install
    bin.install "dist/cli/index.js" => "kibitz"
  end

  test do
    assert_match "kibitz", shell_output("#{bin}/kibitz --version 2>&1", 1)
  end
end
