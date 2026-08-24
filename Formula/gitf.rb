class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.184/gitf"
  sha256 "51b1d3ef48a897f5018d207d61c3db3e5253b77e742367376ff50ff9d6163928"
  version "0.65.184"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
