require "formula"

class Burl < Formula
  desc "burl is a curl like tool for BBC URLs."
  homepage "https://github.com/bbc/burl"
  url "https://github.com/burl/releases/download/v0.1.5/burl-0.1.5.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 ""
  head "https://github.com/bbc/burl.git"
  depends_on "libevent"

  def install
    bin.install "burl"
  end

  # Homebrew requires tests.
  test do
    assert_match "Version 0.1.5", shell_output("#{bin}/burl --version", 2)
  end
end
