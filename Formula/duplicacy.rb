class Duplicacy < Formula
  version "2.4.0"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"
  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
  sha256 "1b6797c086b6196c30fe1593bd2f40ff552b0bcac29bf7b2c3c25c23d9293cf2"

  bottle :unneeded

  def install
    bin.install "duplicacy_osx_x64_#{version}"
    bin.install_symlink "duplicacy_osx_x64_#{version}" => "duplicacy"
  end
end
