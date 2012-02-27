require 'formula'

class Lesspipe < Formula
  homepage 'http://www-zeuthen.desy.de/~friebel/unix/lesspipe.html'
  url 'http://www-zeuthen.desy.de/~friebel/unix/less/lesspipe-1.72.tar.gz'
  md5 '0fdb9d4ab5dd570806e778b6815ea276'

  def options
    [['--syntax-highlighting', 'Enable syntax highlighting']]
  end

  def install
    if ARGV.include? '--syntax-highlighting'
      inreplace 'configure', %q{$ifsyntax = "\L$ifsyntax";}, %q{$ifsyntax = "\Ly";}
    end

    inreplace 'configure', %q{$ifadvanced = "\L$ifadvanced";}, %q{$ifadvanced = "\Ly";}
    system "./configure", "--prefix=#{prefix}", "--default"
    man1.mkpath
    system "make install"
  end
end
