class CargoDeduplicateWarnings < Formula
  desc      "Deduplicate cargo warnings"
  homepage  "https://github.com/swlynch99/cargo-deduplicate-warnings"
  url       "https://github.com/swlynch99/cargo-deduplicate-warnings",
    using:    GitHubGitDownloadStrategy,
    tag:      "v0.1.0",
    revision: "54422ab0dc9d0e0757d27e2421c953308559649a"
  license   any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install",
      "--bin", "cargo-deduplicate-warnings",
      "--path", ".",
      "--locked",
      "--root", prefix
  end

  test do
    system "#{bin}/cargo-deduplicate-warnings", "deduplicate-warnings", "--help"
  end
end
