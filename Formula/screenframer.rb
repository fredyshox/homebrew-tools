class Screenframer < Formula
  desc "Frame recordings from your apps using device mockups."
  homepage "https://github.com/fredyshox/ScreenFramer"
  url "https://github.com/fredyshox/ScreenFramer/archive/refs/tags/1.2.2.tar.gz"
  sha256 "1f6a725f8f62e2df2d074d1bbb5fb39803325267420379a87f1ef7a995165eaa"
  license "MIT"
  head "https://github.com/fredyshox/ScreenFramer.git", :branch => "master"

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
