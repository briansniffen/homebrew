require 'formula'

class Tsocks <Formula
  url 'http://downloads.sourceforge.net/project/tsocks/tsocks/1.8%20beta%205/tsocks-1.8beta5.tar.gz?r=&ts=1283920645&use_mirror=softlayer'
  version '1.8beta5'
  homepage 'http://tsocks.sf.net/'
  md5 ''

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
