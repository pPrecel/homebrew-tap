# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PkupGen < Formula
  desc "Simple tool to generate PKUP artifacts."
  homepage "http://github.com/pPrecel/pkup-gen"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.1.2/pkup-gen_1.1.2_darwin_amd64.tar.gz"
      sha256 "0cc4d46554fe4c6f701635083d0e750999bb9fdc3d8aee15ce3aaef6d3d63e36"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.1.2/pkup-gen_1.1.2_darwin_arm64.tar.gz"
      sha256 "919a7383c18162d31643c5d756758cc26f8f1c032afa921c4208bfcc8cfa25df"

      def install
        bin.install "pkup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.1.2/pkup-gen_1.1.2_linux_amd64.tar.gz"
      sha256 "d4736ea0646aa963a7633a64f40f112f6ffc25f94cdcc2482f02cafd7218a729"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.1.2/pkup-gen_1.1.2_linux_armv7.tar.gz"
      sha256 "76099b55afd7f2cc7b73b3d75994714d8fb2ed5a41a74d8dcfcd1cbcd7b721b4"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/pkup-gen/releases/download/1.1.2/pkup-gen_1.1.2_linux_arm64.tar.gz"
      sha256 "89b863bafc147499e200433946f0b2b0f4c6d392cd9ab626f559d7e6223ffac8"

      def install
        bin.install "pkup"
      end
    end
  end

  test do
    system "#{bin}/pkup"
  end
end
