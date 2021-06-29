# frozen_string_literal: true

class Spmgen < Formula
  desc "Resources boilerplate code generator for Swift"
  homepage "https://github.com/edudo-inc/spmgen"
  url "https://github.com/edudo-inc/spmgen.git", branch: "main"
  version "latest"

  depends_on xcode: ["12.5", :build]

  def install
    system "swift", "package", "clean"
    system "swift", "build", "--product", "spmgen", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/spmgen"
  end

  test do
    echo "Done"
  end
end
