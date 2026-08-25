class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.190/gitf"
  sha256 "4056cc7454ad81d47620bd5a4d4c97e7fe0e6c11e9dff4bd794d4935f5eff5fb"
  version "0.65.190"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
