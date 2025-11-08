# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Loki < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/loki"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.0/loki-aarch64-apple-darwin.tar.gz"
    sha256 "e7049efe94370acd8335f82d0699850337a9cec2d43622e2b7b52eaacc0af1a5"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.0/loki-x86_64-apple-darwin.tar.gz"
    sha256 "52aaa96e68fc7d0931084f934ef731790c2d3ae7cf8cd1f30eab13a25e278b2d"
  else
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.0/loki-x86_64-unknown-linux-musl.tar.gz"
    sha256 "1eca291a285b3f9f66eeed8ce9d8d6dc6c9639de6e9028e0c885af3eebcd609b"
  end
  version "0.1.0"
  license "MIT"

  def install
    bin.install "loki"
    ohai "You're done! Get started with \"loki --help\""
  end
end
