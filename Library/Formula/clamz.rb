require 'formula'

class Clamz < Formula
  depends_on 'libgcrypt'
  depends_on 'expat'

  url 'http://clamz.googlecode.com/files/clamz-0.4.tar.gz'
  homepage 'http://code.google.com/p/clamz/'
  md5 'ab7661340ee27d206f36064cfbd5bfa4'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "clamz"
  end
end
