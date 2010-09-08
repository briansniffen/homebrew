require 'formula'

class Tsocks <Formula
  url 'http://downloads.sourceforge.net/project/tsocks/tsocks/1.8%20beta%205/tsocks-1.8beta5.tar.gz?r=&ts=1283920645&use_mirror=softlayer'
  version '1.8beta5'
  homepage 'http://tsocks.sf.net/'
  md5 '51caefd77e5d440d0bbd6443db4fc0f8'

  def patches
    {:p0 => "http://marc-abramowitz.com/download/tsocks-1.8_macosx.patch"}
  end

  def install
    system "autoreconf -i"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--libdir=#{prefix}/lib"
    system "make install"
  end
end
