class Duplicacy < Formula
  version "3.1.0"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
      sha256 "acf2b0bfa73c4ed0294a9e9a264e21fa70f20e3a4c4b300354f99c18c1752dd7"
      def install
        bin.install "duplicacy_osx_x64_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_arm64_#{version}"
      sha256 "3318a501e64dea4c3c7db848f97d1134916c138d39672963b27d4f41e3e69f1c"
      def install
        bin.install "duplicacy_osx_arm64_#{version}" => "duplicacy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_i386_#{version}"
      sha256 "448caea2cf7ae94f47a531a38316957a83929071fe4c275328b7cfb2e54703ab"
      def install
        bin.install "duplicacy_linux_i386_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_x64_#{version}"
      sha256 "4e33854c0b03b3abd16a76e1778532cfca7e5db373011256d10b546f9b8d6898"
      def install
        bin.install "duplicacy_linux_x64_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_arm_#{version}"
      sha256 "ca5125dc2b0cb9e6adbccd53ec4232519e5ea461254661c9d4f17c851f6c16e8"
      def install
        bin.install "duplicacy_linux_arm_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_arm64_#{version}"
      sha256 "3cb43c60499930d6d0054661a4ca6024b6672fa3ca340afaff657a26557b0c45"
      def install
        bin.install "duplicacy_linux_arm64_#{version}" => "duplicacy"
      end
    end
  end
end
