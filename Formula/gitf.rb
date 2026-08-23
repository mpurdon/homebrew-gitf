class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.167/gitf"
  sha256 "ffce190a1aab109e051d64b29f31faa9f8a7c570a031203cf9c4cd596d334d3d"
  version "0.65.167"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
