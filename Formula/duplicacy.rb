class Duplicacy < Formula
  version "2.7.2"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"
  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
  sha256 :no_check

  bottle :unneeded

  def install
    bin.install "duplicacy_osx_x64_#{version}"
    bin.install_symlink "duplicacy_osx_x64_#{version}" => "duplicacy"
  end
end
