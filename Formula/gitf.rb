class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.257/gitf"
  sha256 "97a439b33e2455f1e9045f3e79dcc2d2b1bdbb4baf8ba4d42b009e3abba9ba88"
  version "0.65.257"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
