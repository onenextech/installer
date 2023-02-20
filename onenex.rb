class Onenex < Formula
  desc "A command-line tool to create starter kits for Laravel, Swift, Kotlin, and Vue"
  homepage "https://github.com/onenex/installer"
  url "https://github.com/onenextech/installer/blob/main/onenex_v1.0.0.tar.gz"
  sha256 "13020cfe5ae9b3b7703e338b24b636cdf3b8e62847083babdab29f8be42849e6"
  license "MIT"

  def install
    bin.install "onenex"
  end

  test do
    system "#{bin}/onenex", "version"
  end
end
