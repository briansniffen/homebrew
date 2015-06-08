# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Muchsync < Formula
  desc "synchronize notmuch mail across machines"
  homepage "http://www.muchsync.org"
  version "0.0"
  url "http://www.muchsync.org/muchsync.git", :using => :git
  sha256 ""

  depends_on "notmuch"
  depends_on "xapian"
  depends_on "pandoc" => :build
  depends_on "pkg-config" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build

  def install
    system "autoreconf",  "-i"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test muchsync`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/muchsync"
  end
end
