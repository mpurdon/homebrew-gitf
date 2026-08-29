class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.221/gitf"
  sha256 "32e2dce5b51cdc6e171b9d9598dec8d5ecb01aa0369c2cd9fb8b9abcc5f86a2b"
  version "0.65.221"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
