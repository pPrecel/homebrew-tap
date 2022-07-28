# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudagent < Formula
  desc "The simple and easy-to-use program designed to watch user activity for Cloud Providers."
  homepage "http://github.com/pPrecel/cloudagent"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.0/cloudagent_0.5.0_darwin_x86_64.tar.gz"
      sha256 "15019bdd32900a227727c60d2a47f9b5605cf676d25fd2d47dd232dafaf30417"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.0/cloudagent_0.5.0_darwin_arm64.tar.gz"
      sha256 "db26b9eb70c4855d686f12f3d0f92af30d08ded4a6cff742549ad3a6a1e7247f"

      def install
        bin.install "cloudagent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.0/cloudagent_0.5.0_linux_x86_64.tar.gz"
      sha256 "dd94e3edf244d4e6e3ceb79230f9d87205efc39739d5c87e79f6a92bcdee972b"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.0/cloudagent_0.5.0_linux_armv7.tar.gz"
      sha256 "49c07d7bdea841f2617d3917a4a17fb44549742548c25f03ebadc0d83400ec3b"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.0/cloudagent_0.5.0_linux_arm64.tar.gz"
      sha256 "aee9442bbb01caa317a617a5f86a96c27375419fd9310bd68eb9b94020c15457"

      def install
        bin.install "cloudagent"
      end
    end
  end

  service do
    run ["#{opt_bin}/cloudagent", "serve"]
    log_path "/tmp/cloudagent/cloudagent.stdout"
    environment_variables PATH: "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:#{Dir.home}/.rd/bin:#{Dir.home}/.krew/bin:"
    keep_alive true
  end

  test do
    system "#{bin}/cloudagent"
  end
end
