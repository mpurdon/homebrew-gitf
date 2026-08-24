class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.182/gitf"
  sha256 "281d38b16b8649a9a443ff8aa2c8dfc93240f4dcc7a348406459262bef5ef7b1"
  version "0.65.182"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
