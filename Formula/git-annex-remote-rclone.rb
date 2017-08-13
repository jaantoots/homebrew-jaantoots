class GitAnnexRemoteRclone < Formula
  desc "Use rclone supported cloud storage with git-annex"
  homepage "https://github.com/DanielDent/git-annex-remote-rclone"
  url "https://github.com/DanielDent/git-annex-remote-rclone/archive/v0.6.tar.gz"
  sha256 "fb9bb77c6dd30dad4966926af87f63be92ef442cfeabcfd02202c657f40439d0"
  head "https://github.com/DanielDent/git-annex-remote-rclone.git"

  bottle :unneeded

  depends_on "git-annex"
  depends_on "rclone"

  def install
    bin.install "git-annex-remote-rclone"
  end

  test do
    assert_equal "VERSION 1", shell_output("#{bin}/git-annex-remote-rclone < /dev/null").strip
  end
end
