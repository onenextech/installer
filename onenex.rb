class Onenex < Formula
  desc "Command-line interface install starter kits from github.com/onenextech"
  homepage "https://github.com/onenextech/installer"
  url "https://github.com/onenextech/installer/archive/v1.0.0.tar.gz"
  sha256 "81530ef9813498f363f928c881aa070c1e799d4753749774481ac5192a5acc50"

  def install
    bin.install "onenex"
  end
end
