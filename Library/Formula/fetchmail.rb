require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Fetchmail < Formula
  homepage 'http://fetchmail.info/'
  url 'http://sourceforge.net/projects/fetchmail.berlios/files/fetchmail-6.3.21.tar.bz2/download'
  md5 '0ad8eac47e85bd0ae63870daa09992af'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    system "fetchmail"
  end
end
