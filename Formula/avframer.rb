class Avframer < Formula
  desc "Frame recordings from your apps using device mockups."
  homepage "https://github.com/fredyshox/AppVideoFramer"
  url "https://github.com/fredyshox/AppVideoFramer/archive/1.0.0.tar.gz"
  sha256 "6bdf311c33d325377e7dc5852d60a72f57921e9caab952a4fa7ad3bebef91527"
  license "MIT"
  head "https://github.com/fredyshox/AppVideoFramer.git", :branch => "master"

  depends_on "cmake" => [:build, "3.16"]
  depends_on "opencv"
  depends_on "cxxopts"
  depends_on "nlohmann-json"

  def install 
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

end
