require 'formula'

class A2ps <Formula
  url 'http://ftp.gnu.org/gnu/a2ps/a2ps-4.14.tar.gz'
  homepage 'http://www.gnu.org/software/a2ps/'
  md5 '781ac3d9b213fa3e1ed0d79f986dc8c7'

  def patches
    {:p0 => "http://svn.macports.org/repository/macports/trunk/dports/print/a2ps/files/patch-lib__xstrrpl.c"}
  end

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
