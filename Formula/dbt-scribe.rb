# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private_strategy"
class DbtScribe < Formula
  desc "dbt Labs' main internal CLI."
  homepage "https://github.com/dbt-labs/scribe"
  version "0.0.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dbt-labs/scribe/releases/download/v0.0.37/scribe_0.0.37_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c088470f311e4436b62e793a3047f470b28906ff53062fadfad2d3116036aedf"

      def install
        bin.install "scribe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dbt-labs/scribe/releases/download/v0.0.37/scribe_0.0.37_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "26954e4ff300b447938d502a87eb370a5ed12750258ec45a07667ec4c1ce26a2"

      def install
        bin.install "scribe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dbt-labs/scribe/releases/download/v0.0.37/scribe_0.0.37_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a0afd5857036167570c740273feafec35c4b608c43660fff7db34a70189fc813"

      def install
        bin.install "scribe"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dbt-labs/scribe/releases/download/v0.0.37/scribe_0.0.37_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "10d8afc8e9298919f8672ea7edac09ea8c77a35d716bf0c52f045052bb257396"

      def install
        bin.install "scribe"
      end
    end
  end
end
