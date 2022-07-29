# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudagent < Formula
  desc "The simple and easy-to-use program designed to watch user activity for Cloud Providers."
  homepage "http://github.com/pPrecel/cloudagent"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.4/cloudagent_0.5.4_darwin_x86_64.tar.gz"
      sha256 "c06f218372ec86af64330611bb6a63461e83b31bfb8292475e7c0b0fa4f40d57"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.4/cloudagent_0.5.4_darwin_arm64.tar.gz"
      sha256 "829a9559dc6787ec8afaa0171bb009f569419812dc89d1d7b2bea73e9d4de8c9"

      def install
        bin.install "cloudagent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.4/cloudagent_0.5.4_linux_arm64.tar.gz"
      sha256 "fa719fe91c1fc27f7df383a936612d0582653789bc60c5488aca6e6e32955816"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.4/cloudagent_0.5.4_linux_x86_64.tar.gz"
      sha256 "31e3df406d41f4bf7bf0b07f20235c3f12d8044865306d716622db56bc514b5b"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.5.4/cloudagent_0.5.4_linux_armv7.tar.gz"
      sha256 "088401e8be31712781ceae7cf4f8f937f8706ef7d29c6ffd133cfb8af16305b4"

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
