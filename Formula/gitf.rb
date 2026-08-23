class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.169/gitf"
  sha256 "26e1753b3f339f1da0d6d602fa01fc8caf9a636741a04b5e0cb49b9a84e1bd2b"
  version "0.65.169"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
