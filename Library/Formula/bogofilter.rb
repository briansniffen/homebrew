require 'formula'

class Bogofilter <Formula
  url 'http://sourceforge.net/projects/bogofilter/files/bogofilter-current/bogofilter-1.2.2/bogofilter-1.2.2.tar.bz2/download'
  homepage 'http://bogofilter.sourceforge.net/'
  version '1.2.2'
  md5 '4bcabdf8c5e7efefcb508eda7e80eebc'

# depends_on 'cmake'
depends_on 'sqlite'

  def install
    system "./configure", "--with-database=sqlite", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
