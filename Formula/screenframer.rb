class Screenframer < Formula
  desc "Frame recordings from your apps using device mockups."
  homepage "https://github.com/fredyshox/ScreenFramer"
  url "https://github.com/fredyshox/ScreenFramer/archive/1.0.0.tar.gz"
  sha256 "d288a9af320112cf4d101bfa3b08e61b8e0ea258724ee79856d6d889bde6d0e5"
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
