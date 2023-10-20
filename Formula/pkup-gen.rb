# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PkupGen < Formula
  desc "Simple tool to generate PKUP artifacts."
  homepage "http://github.com/pPrecel/pkup-gen"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.3.0/pkup-gen_1.3.0_darwin_amd64.tar.gz"
      sha256 "e64a359d040b62a0f7451b4f39d1c841f2e8bbb8d6dd1f78ed7ae42dde074ead"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.3.0/pkup-gen_1.3.0_darwin_arm64.tar.gz"
      sha256 "a0aacebf3eea941ba683c3f76bea74b70138c557c32c04925961e138c109079c"

      def install
        bin.install "pkup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.3.0/pkup-gen_1.3.0_linux_amd64.tar.gz"
      sha256 "0be1c692d6d1a5df2fbdb66cdfb9e02cdbe995767f95af90db170ef0dd700851"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.3.0/pkup-gen_1.3.0_linux_armv7.tar.gz"
      sha256 "43990087d21fe0fe8f047eca1c8715c5358e79784dd6d96e9ff774d4820ea862"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.3.0/pkup-gen_1.3.0_linux_arm64.tar.gz"
      sha256 "67f7532bb9bdbf551d869c7843e256d015917eb2c1ed109b2f9841d5b09a8eab"

      def install
        bin.install "pkup"
      end
    end
  end

  test do
    system "#{bin}/pkup"
  end
end
