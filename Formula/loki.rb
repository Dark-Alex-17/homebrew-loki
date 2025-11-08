# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Loki < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/loki"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.2/loki-aarch64-apple-darwin.tar.gz"
    sha256 "aa8932d6c4ae7768d6a78386888a3ecc0e5194513ad6fa0da977271c63276bc2"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.2/loki-x86_64-apple-darwin.tar.gz"
    sha256 "028615a3bed950839bcd81e012fb8c58ff6c57fafec38cc792c35085d550a346"
  else
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.2/loki-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9137ceefac78ffd691bae80f7c73f7644a18abf036848d5fe9103ccc7f8e997d"
  end
  version "0.1.2"
  license "MIT"

  def install
    bin.install "loki"
    ohai "You're done! Get started with \"loki --help\""
  end
end
