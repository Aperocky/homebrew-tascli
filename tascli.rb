class Tascli < Formula
  desc "Simple, fast, local CLI tool for tracking tasks and records from unix terminal"
  homepage "https://github.com/Aperocky/tascli"
  url "https://github.com/Aperocky/tascli/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "7c7aaf31b3615201841112c87f145e9c07cb02fb0fc247776f63dcb47565d74f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tascli 0.6.1", shell_output("#{bin}/tascli --version")
  end
end
