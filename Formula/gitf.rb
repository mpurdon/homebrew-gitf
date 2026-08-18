class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.119/gitf"
  sha256 "5a75a76c29b6be68e1e0af653b987dbd7ff94131e71c35a9a08edaeb5ec1bdd4"
  version "0.65.119"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
