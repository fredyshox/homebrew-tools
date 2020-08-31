class Screenframer < Formula
  desc "Frame recordings from your apps using device mockups."
  homepage "https://github.com/fredyshox/ScreenFramer"
  url "https://github.com/fredyshox/ScreenFramer/archive/1.2.0.tar.gz"
  sha256 "6f47f66e3b0bfb490d2379e0456864b63f717229a191a6398d3b2ddab982a0fe"
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
