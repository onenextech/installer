class Onenex < Formula
  desc "Command-line interface install starter kits from github.com/onenextech"
  homepage "https://github.com/onenextech/installer"
  url "https://github.com/onenextech/installer/archive/v1.0.0.tar.gz"
  sha256 "22d5c5c8405d8906c341f29950faf8af1758efae5385fcc3c3889358b03cfe43"

  def install
    bin.install "onenex"
  end
end
