class Duplicacy < Formula
  version "3.0.0"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
      sha256 "acd3c1a15ab85f90a9446c6958041b32755c722affe94eb2464593d01fa5647c"
      def install
        bin.install "duplicacy_osx_x64_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_arm64_#{version}"
      sha256 "645638f59fbf7a76d03a0a32078fcc66bb165f1d5118119c20729ec0aaa1f2c2"
      def install
        bin.install "duplicacy_osx_arm64_#{version}" => "duplicacy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_i386_#{version}"
      sha256 "ab008a85dcbad3034593cf7964a344a21ded9d78a6b88e35949ccf6e6948fc67"
      def install
        bin.install "duplicacy_linux_i386_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_x64_#{version}"
      sha256 "be77c5a96b48eabb4cdfaf8cc46576f1fe93d609380247210eba758cf6ce7270"
      def install
        bin.install "duplicacy_linux_x64_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_arm_#{version}"
      sha256 "2046e647cb7045972244fb9abd0e1ca2b2487a622e7a96923c523cb80f13cdf4"
      def install
        bin.install "duplicacy_linux_arm_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_arm64_#{version}"
      sha256 "39e1b30bf41b59d74a6c612dec5b81ebf7b0b0b2383277f03832893f6e3fc449"
      def install
        bin.install "duplicacy_linux_arm64_#{version}" => "duplicacy"
      end
    end
  end
end
