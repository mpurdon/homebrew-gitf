class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.260/gitf"
  sha256 "f1eb17c44282fc5b30c5ddac37ed1893d5f9c1ebda037e4ac9dac30fb8a54bc8"
  version "0.65.260"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
