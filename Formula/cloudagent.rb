# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudagent < Formula
  desc "The simple and easy-to-use program designed to watch user activity for Cloud Providers."
  homepage "http://github.com/pPrecel/cloudagent"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.3.1/cloudagent_0.3.1_darwin_arm64.tar.gz"
      sha256 "e598033aff008550b04c1d7a386407ef9553d11e4ce8bc9e4db77adde66f82a3"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.3.1/cloudagent_0.3.1_darwin_x86_64.tar.gz"
      sha256 "d50b568c44e80fbd007ad8c50c13b3d7c0fe9866fb2aa5a384174d0425d07a71"

      def install
        bin.install "cloudagent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.3.1/cloudagent_0.3.1_linux_x86_64.tar.gz"
      sha256 "33582e82b237b1e3be9f220c6a5342d51b6c78feae956555258f12a7c8137e2a"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.3.1/cloudagent_0.3.1_linux_armv7.tar.gz"
      sha256 "d109de7c28736eec38c15223ce6e5843456a147bc13dde2e16c55a75381b64e0"

      def install
        bin.install "cloudagent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/cloudagent/releases/download/v0.3.1/cloudagent_0.3.1_linux_arm64.tar.gz"
      sha256 "d560aa7545ac4d0fc85130720e48174fbe6df54cc3072c9f046747d488297d9a"

      def install
        bin.install "cloudagent"
      end
    end
  end

  def post_install
    system "make", "bootstrap-config"
  end

  service do
    run ["#{opt_bin}/cloudagent", "serve"]
    log_path "/tmp/cloudagent/cloudagent.stdout"
    environment_variables PATH: "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:"
    keep_alive true
  end

  test do
    system "#{bin}/cloudagent"
  end
end
