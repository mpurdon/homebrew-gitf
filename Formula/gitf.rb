class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.180/gitf"
  sha256 "cd6ea114e3aa45e1b5ff4a4f76cd1b0851e51f9a24f0038896a5feff028bc0ed"
  version "0.65.180"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
