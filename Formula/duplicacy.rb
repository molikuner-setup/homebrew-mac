class Duplicacy < Formula
  version "2.7.2"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"

  on_macos do
    url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
    sha256 "7d76c03c965d2d39ca11ef2d6d50bdc3ed0a37e4a2384aed5d8b7a3ee81449f2"
    def install
      bin.install "duplicacy_osx_x64_#{version}" => "duplicacy"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_x64_#{version}"
      sha256 "b83c2c8095839f00b7851967615e81ca4fbd4d255b4bfde9da9ba74ff85a852d"
      def install
        bin.install "duplicacy_linux_x64_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_arm_#{version}"
      sha256 "fe92fe2bff4941a3c165cb9a02666457d871973396006dedbaea66009798fc8d"
      def install
        bin.install "duplicacy_linux_arm_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_arm64_#{version}"
      sha256 "df37d479a01dde0717663b873a2b338927c22a04395ad70f4388c88e36436309"
      def install
        bin.install "duplicacy_linux_arm64_#{version}" => "duplicacy"
      end
    end
  end
end
