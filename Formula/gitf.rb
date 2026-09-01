class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.261/gitf"
  sha256 "31b39fbabec2ab4e8c8995829bc84ebd7d0df7e9b59ecb6162fd2a8b983c6eaf"
  version "0.65.261"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
