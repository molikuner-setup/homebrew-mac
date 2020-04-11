class Duplicacy < Formula
  version "2.5.0"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"
  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
  sha256 "3deeecbb513cdc4ca72e5492dd1e0bb76a91ab0dc9e82771cee3dc6cd480bf56"

  bottle :unneeded

  def install
    bin.install "duplicacy_osx_x64_#{version}"
    bin.install_symlink "duplicacy_osx_x64_#{version}" => "duplicacy"
  end
end
