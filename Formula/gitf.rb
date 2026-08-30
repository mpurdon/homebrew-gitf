class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.238/gitf"
  sha256 "ad62131ee92ac70e4ad4a7c6e12d9063eac5aa4c5ecd8e138edacbb164ed8127"
  version "0.65.238"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
