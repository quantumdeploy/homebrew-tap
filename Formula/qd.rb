class Qd < Formula
  desc "QuantumDeploy CLI — infrastructure intelligence from your terminal"
  homepage "https://quantumdeploy.ai"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quantumdeploy/quantumdeploy/releases/download/v1.0.0/qd_1.0.0_darwin_arm64.tar.gz"
      sha256 "f426f180ea7e4d02ade87c2af0a185a9f8656842e4ee33704f5c5f044b8515ce"
    else
      url "https://github.com/quantumdeploy/quantumdeploy/releases/download/v1.0.0/qd_1.0.0_darwin_amd64.tar.gz"
      sha256 "9a55929ab828ba3c05a1ea808e7ce0d90ff5eb7c86c86d4d2150b824738f27bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quantumdeploy/quantumdeploy/releases/download/v1.0.0/qd_1.0.0_linux_arm64.tar.gz"
      sha256 "2c48acf906f14691386ac0bc3e6c46116837d1a18f87a2479f2c022392463301"
    else
      url "https://github.com/quantumdeploy/quantumdeploy/releases/download/v1.0.0/qd_1.0.0_linux_amd64.tar.gz"
      sha256 "3be8cfcf2383053c3b0a5271a8da31ceb64ba61a92fc9228fcb242fae4bb294e"
    end
  end

  def install
    bin.install "qd"
  end

  test do
    assert_match "QuantumDeploy CLI", shell_output("#{bin}/qd --help")
  end
end
