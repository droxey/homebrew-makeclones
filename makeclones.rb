require 'rbconfig'
class Makeclones < Formula
  desc ""
  homepage "https://github.com/droxey/makeclones"
  version "1.0.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/droxey/makeclones/releases/download/v1.0.0/makeclones_1.0.0_darwin_amd64.zip"
      sha256 "d201c75bdc36f0bc627ac71f23fefc4f0efb3ac77edd5f4cb971aaed6bf99ab8"
    when /linux/
      url "https://github.com/droxey/makeclones/releases/download/v1.0.0/"
      sha256 ""
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/droxey/makeclones/releases/download/v1.0.0/makeclones_1.0.0_darwin_386.zip"
      sha256 "047598d49c29d209b1cb67cfa08176daeeab2ad435c5c43eadfb39457b2e4d7c"
    when /linux/
      url "https://github.com/droxey/makeclones/releases/download/v1.0.0/"
      sha256 ""
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "makeclones"
  end

  test do
    system "makeclones"
  end

end
