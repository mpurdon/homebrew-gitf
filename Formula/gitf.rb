class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.165/gitf"
  sha256 "fa1fb439d3d7c8b67a1bba50bbd749d5aa9337d6aa13a6aa1de0807e385775eb"
  version "0.65.165"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
