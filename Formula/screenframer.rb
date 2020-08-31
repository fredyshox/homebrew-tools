class Screenframer < Formula
  desc "Frame recordings from your apps using device mockups."
  homepage "https://github.com/fredyshox/ScreenFramer"
  url "https://github.com/fredyshox/ScreenFramer/archive/1.2.1.tar.gz"
  sha256 "382043474c29e9d6a4cf42f0ad386061e099210e2c173fa06a8aea3c4dd046da"
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
