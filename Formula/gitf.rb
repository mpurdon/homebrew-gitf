class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.246/gitf"
  sha256 "3e1881d6a8ea3e1870f61ddd5db7cd02d6783ff1dbc03ab3c1dfe5f6b530e8cc"
  version "0.65.246"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
