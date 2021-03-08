class Duplicacy < Formula
  version "2.7.2"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"
  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
  sha256 "7d76c03c965d2d39ca11ef2d6d50bdc3ed0a37e4a2384aed5d8b7a3ee81449f2"

  bottle :unneeded

  def install
    bin.install "duplicacy_osx_x64_#{version}"
    bin.install_symlink "duplicacy_osx_x64_#{version}" => "duplicacy"
  end
end
