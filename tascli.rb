class Tascli < Formula
  desc "A simple, fast, local CLI tool for tracking tasks and records from unix terminal."
  homepage "https://github.com/Aperocky/tascli"
  version "0.6.0"
  url "https://github.com/Aperocky/tascli/archive/refs/tags/v#{version}.tar.gz"
  sha256 "d7e3942d203599caceb12ee5ab808567ad8cc4e03986500b681da8c85c47cf01"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tascli #{version}", shell_output("#{bin}/tascli --version")
  end
end
