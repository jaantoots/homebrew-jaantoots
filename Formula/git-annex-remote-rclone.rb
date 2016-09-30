class GitAnnexRemoteRclone < Formula
  desc "Use rclone supported cloud storage with git-annex"
  homepage "https://github.com/DanielDent/git-annex-remote-rclone"
  url "https://github.com/DanielDent/git-annex-remote-rclone/archive/v0.4.tar.gz"
  sha256 "c67ee42d3ab81bf7b471f8b46cce58ae9bb39393ea93630fb7909c9c5c79b727"
  head "https://github.com/DanielDent/git-annex-remote-rclone.git"

  bottle :unneeded

  depends_on "git-annex"
  depends_on "rclone"

  def install
    bin.install "git-annex-remote-rclone"
  end

  test do
    assert_equal "VERSION 1", shell_output("git-annex-remote-rclone < /dev/null").strip
  end
end
