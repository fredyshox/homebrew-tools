class Screenframer < Formula
  desc "Frame recordings from your apps using device mockups."
  homepage "https://github.com/fredyshox/ScreenFramer"
  url "https://github.com/fredyshox/ScreenFramer/archive/1.1.0.tar.gz"
  sha256 "f89bc57b59cb6d6e9f32d177f7ceb8f8d18756fca37f41a63103786300b1f55f"
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
