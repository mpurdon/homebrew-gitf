class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.236/gitf"
  sha256 "de37a53c6c0bf83156a38cf3cb7cdadbcee7ffba7f1bd9669381c3fc7626e00d"
  version "0.65.236"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
