# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Anecompat < Formula
  desc "Check compatibility of CoreML model with Apple Neural Engine"
  homepage "https://github.com/fredyshox/ANECompat"
  url "https://github.com/fredyshox/ANECompat/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0bf1a5bfebc0ddd1afdd2b4da8d916595af26c6cd301d11ebe058e83e6d671ef"
  license "MIT"
  head "https://github.com/fredyshox/ANECompat.git", :branch => "master"

  depends_on arch: :arm64

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
