class Duplicacy < Formula
  version "3.0.1"
  desc "A new generation cloud backup tool"
  homepage "https://duplicacy.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_x64_#{version}"
      sha256 "1feddbd59ea3563f23d38f3aa9cd2abfd1e391ce08f5ac831e97bc330dd92cf2"
      def install
        bin.install "duplicacy_osx_x64_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_arm64_#{version}"
      sha256 "80ef00fc6f4d335e85c3366d70db8297159f8bba639ed6ebbe4fac22cc161f74"
      def install
        bin.install "duplicacy_osx_arm64_#{version}" => "duplicacy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_i386_#{version}"
      sha256 "2f48b575819ec1a968270e0b02c83e667e0c4b88fb93b6f82a80bfd2f53948ce"
      def install
        bin.install "duplicacy_linux_i386_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_x64_#{version}"
      sha256 "91e7191e11fadc75c16360c0527fd25df8f80ea976819dbf349c86546197df9b"
      def install
        bin.install "duplicacy_linux_x64_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_arm_#{version}"
      sha256 "9c71d81f88d7ecb25eb5db0f726a535753aed79378d6e3179b4d88e5db215943"
      def install
        bin.install "duplicacy_linux_arm_#{version}" => "duplicacy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_arm64_#{version}"
      sha256 "ba9ce79764a38e1db41ddffec9dfff19440ab4d1b93a4628eccc1c071f96347c"
      def install
        bin.install "duplicacy_linux_arm64_#{version}" => "duplicacy"
      end
    end
  end
end
