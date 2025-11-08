# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Loki < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/loki"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.1/loki-aarch64-apple-darwin.tar.gz"
    sha256 "c2b5296748924c9b9ae801875a6a003541d2d905d9c9b015d5b77c34333acf2b"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.1/loki-x86_64-apple-darwin.tar.gz"
    sha256 "99a65c008bb840791a6a9600b89e2384a45aef0956cfd174851ba419a97a6cfb"
  else
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.1/loki-x86_64-unknown-linux-musl.tar.gz"
    sha256 "80a736230fc15cd6985ff6ee3d08f04b08fc319ea1d676ddb452fbaae5a179ef"
  end
  version "0.1.1"
  license "MIT"

  def install
    bin.install "loki"
    ohai "You're done! Get started with \"loki --help\""
  end
end
