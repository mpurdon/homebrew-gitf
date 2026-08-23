class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.164/gitf"
  sha256 "87b59dc0f20c84b9d9f395ebe7b81398f13bf92d198f6d7be6393e06dbf4eaf1"
  version "0.65.164"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
