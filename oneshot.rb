# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oneshot < Formula
  desc "A first first-come-first-serve, single-fire, feature-rich HTTP server. Easily transfer files to and from your terminal and any browser or HTTP client."
  homepage "https://www.oneshot.uno"
  version "2.0.0-beta3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestnode-io/oneshot/releases/download/v2.0.0-beta3/oneshot_Darwin_arm64.tar.gz"
      sha256 "682bfe1723494652adf6036ad8a5ba7883aad33f641ec5a3f6d13a19a790099e"

      def install
        bin.install "oneshot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestnode-io/oneshot/releases/download/v2.0.0-beta3/oneshot_Darwin_x86_64.tar.gz"
      sha256 "1e8ea014a63314f5383e4deb14dcb222b4ff7966c83f226a8cb352d5c07a76a4"

      def install
        bin.install "oneshot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/forestnode-io/oneshot/releases/download/v2.0.0-beta3/oneshot_Linux_armv6.tar.gz"
      sha256 "f6102ed4cf5c39deb90f7c518fd1b219d92c30de203935a3d89b8c16212b8296"

      def install
        bin.install "oneshot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestnode-io/oneshot/releases/download/v2.0.0-beta3/oneshot_Linux_arm64.tar.gz"
      sha256 "2e069ceca5ba32473521f7e6189b1462b439ae3bc6eee28366207f0a78302aba"

      def install
        bin.install "oneshot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestnode-io/oneshot/releases/download/v2.0.0-beta3/oneshot_Linux_x86_64.tar.gz"
      sha256 "d719dc673333a28a29849056eecb14b2524093e4aa84fea9cc7d15c0d0d1ddb0"

      def install
        bin.install "oneshot"
      end
    end
  end

  test do
    system "#{bin}/oneshot", "version"
  end
end