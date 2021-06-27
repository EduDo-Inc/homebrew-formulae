# frozen_string_literal: true

class SwiftFormat < Formula
  desc "Code formatter, based on SourceKit-LSP"
  homepage "https://github.com/edudo-inc/swift-format"
  url "https://github.com/edudo-inc/swift-format.git", branch: "edudo"
  version "latest"
  
  depends_on xcode: ["12.5", :build]

  def install
    system "swift", "package", "clean"
    system "swift", "build", "--product", "swift-format", "-c", "release", "--disable-sandbox", "-build-path", "'.build'"
    bin.install ".build/release/swift-format"
  end

  test do
    echo "Done"
  end
end