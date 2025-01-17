# This file was generated by GoReleaser. DO NOT EDIT.
class Gpair < Formula
  desc "A simple utility that makes it easier to share credit for collaboration on GitHub."
  homepage "https://github.com/adavidalbertson/gpair"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/adavidalbertson/gpair/releases/download/v0.1.0/gpair_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "4ff033dc95ff25021fb51dd487d403c7a0785e4647efaabf017be1f2c953b6ea"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/adavidalbertson/gpair/releases/download/v0.1.0/gpair_0.1.0_Linux_x86_64.tar.gz"
      sha256 "d93f2249c38f240d510a7ded295ef0ec07c362de4f26b70be227a874eb24d12c"
    end
  end
  
  depends_on "git"

  def install
    bin.install "gpair"
  end

  test do
    system "#{bin}/gpair -h"
  end
end
