class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.220/gitf"
  sha256 "08bc0dd37fe290070155024a6ecb773c06ec9b1cc7a6d723ce3e6ec9d4139c0c"
  version "0.65.220"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
