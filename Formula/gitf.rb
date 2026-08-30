class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.233/gitf"
  sha256 "8556d6f871a3cd8f3d2ed98020bb2d2b4037d4ad85b57b98bd6f5de4dc02dbf4"
  version "0.65.233"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
