class Gitf < Formula
  desc "Ghost in the Factory - autonomous AI software factory CLI"
  homepage "https://ghostinthefactory.com"
  url "https://github.com/mpurdon/gitf/releases/download/v0.65.153/gitf"
  sha256 "30f77df33019e8ba1f1c1ca4f5be72c7017f1edbbdab77ffd76d6518fbb3d52c"
  version "0.65.153"

  depends_on "erlang"

  def install
    bin.install "gitf"
  end

  test do
    assert_match "gitf", shell_output("#{bin}/gitf help 2>&1", 0)
  end
end
