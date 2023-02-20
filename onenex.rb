class Onenex < Formula
  desc "A command-line tool to create starter kits for Laravel, Swift, Kotlin, and Vue"
  homepage "https://github.com/onenex/installer"
  url "https://github.com/onenextech/installer/blob/main/onenex_v1.0.0.tar.gz"
  sha256 "d1392af094bb6c540b495baed34b14bcbff98437e1260b6dff4b817f1df6920c"
  license "MIT"

  def install
    bin.install "onenex"
  end

  test do
    system "#{bin}/onenex", "version"
  end
end
