# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudagent < Formula
  desc "The simple and easy-to-use program designed to watch user activity for Cloud Providers."
  homepage "http://github.com/pPrecel/cloudagent"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.2.0/cloudagent_0.2.0_darwin_arm64.tar.gz"
      sha256 "85523bae744c84588e2159c26ad74b1fedbaf4b0ba1042f59ef4c21c92481af0"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.2.0/cloudagent_0.2.0_darwin_x86_64.tar.gz"
      sha256 "e21a27c4ebf54158de84676f37f08a4055e2c01c7df7add44ef92ad02a643025"

      def install
        bin.install "cloudagent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.2.0/cloudagent_0.2.0_linux_x86_64.tar.gz"
      sha256 "98b389b51dbca4d99a26c73f82059a823b6439aea021b7de8cdf513b8f3e21c0"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.2.0/cloudagent_0.2.0_linux_arm64.tar.gz"
      sha256 "b89a889bfe93ac3e93e61637e63c968f897d7c1bbd33c21c9622ff80e25d3a63"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.2.0/cloudagent_0.2.0_linux_armv7.tar.gz"
      sha256 "9457a8b3e5cf373b01b0a38f53a454cf2b77a6fdf9e0eb7e2d299a5d5dbb335e"

      def install
        bin.install "cloudagent"
      end
    end
  end
end
