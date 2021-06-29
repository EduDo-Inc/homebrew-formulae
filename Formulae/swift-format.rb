# frozen_string_literal: true

class SwiftFormat < Formula
  desc "Code formatter, based on SourceKit-LSP"
  homepage "https://github.com/edudo-inc/swift-format"
  url "https://github.com/edudo-inc/swift-format.git", branch: "edudo"
  version "edudo"

  depends_on xcode: ["12.5", :build]

  def install
    system "`make install_clean`"
  end

  test do
    echo "Done"
  end
end
