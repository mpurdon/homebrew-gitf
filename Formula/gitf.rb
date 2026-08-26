class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.207/gitf"
  sha256 "5b8cf9c67472a11e5d7859a3f0a003d5bbe37d6fe604f301ce5b17c0c064ae5e"
  version "0.65.207"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
