class Kibitz < Formula
  desc "Real-time decoded feed of AI agent actions — monitor Claude Code & Codex sessions"
  homepage "https://github.com/kibitzsh/kibitz"
  url "https://registry.npmjs.org/@kibitzsh/kibitz/-/kibitz-0.0.6.tgz"
  sha256 "298d7716e4ae4dbe7aa57cd7e3a24116f0641cc29a88aaebc740abc42eae1dba"
  license "MIT"

  depends_on "node"

  def install
    bin.install "dist/cli/index.js" => "kibitz"
  end

  test do
    assert_match "kibitz", shell_output("#{bin}/kibitz --version 2>&1", 1)
  end
end
