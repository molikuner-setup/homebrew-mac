class Duplicacy < Formula
  version "2.6.0"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"
  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
  sha256 "c9ca18f7c7595caff2dec300c4bfb158739c8a0ba29ac192e03fe0861d95ad7f"

  bottle :unneeded

  def install
    bin.install "duplicacy_osx_x64_#{version}"
    bin.install_symlink "duplicacy_osx_x64_#{version}" => "duplicacy"
  end
end
