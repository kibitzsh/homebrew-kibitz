class Kibitz < Formula
  desc "Real-time decoded feed of AI agent actions — monitor Claude Code & Codex sessions"
  homepage "https://github.com/kibitzsh/kibitz"
  url "https://registry.npmjs.org/@kibitzsh/kibitz/-/kibitz-0.0.4.tgz"
  sha256 "effb01483e7aa52933c03442978460000217354a098ed2d6ccde0f13758177f3"
  license "MIT"

  depends_on "node"

  def install
    bin.install "dist/cli/index.js" => "kibitz"
  end

  test do
    assert_match "kibitz", shell_output("#{bin}/kibitz --version 2>&1", 1)
  end
end
