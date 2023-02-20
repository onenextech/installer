class Onenex < Formula
  desc "A command-line tool to create starter kits for Laravel, Swift, Kotlin, and Vue"
  homepage "https://github.com/onenex/installer"
  url "https://github.com/onenextech/installer/blob/main/onenex_v1.0.0.tar.gz"
  sha256 "81530ef9813498f363f928c881aa070c1e799d4753749774481ac5192a5acc50"
  license "MIT"

  def install
    bin.install "onenex"
  end

  test do
    system "#{bin}/onenex", "version"
  end
end
