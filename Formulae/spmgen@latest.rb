class SPMGenATLatest < Formula
    desc "`spmgen`is a resources boilerplate code generator for Swift"
    homepage "https://github.com/edudo-inc/spmgen"
    url "https://github.com/edudo-inc/spmgen.git", :branch => "main"
    version "latest"

    depends_on :xcode => ["12.5", :build]

    def install
        system "swift build -c release --disable-sandbox --build-path '.build'"
        bin.install ".build/release/spmgen"
    end

    test do
        system "#{bin}/spmgen --version"
    end
end
