require 'rbconfig'
class Makeclones < Formula
  desc ""
  homepage "https://github.com/droxey/makeclones"
  version "snapshot"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/droxey/makeclones/releases/download/vsnapshot/makeclones_darwin_amd64.zip"
      sha256 "99ed26582eb6dc0573f646a06ea3151692e4f145b15202c0a42f5e0c04af55e9"
    when /linux/
      url "https://github.com/droxey/makeclones/releases/download/vsnapshot/makeclones_linux_amd64.tar.gz"
      sha256 "b50403786429eb2b3c8fd92d0cfec636a0856d0d7aa8ba1bc28d5eff3c961cd4"
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
      url "https://github.com/droxey/makeclones/releases/download/vsnapshot/makeclones_darwin_386.zip"
      sha256 "198b7f51c326110ac8586ce8b4ca90a29ab08025899dd5cba4353101064be428"
    when /linux/
      url "https://github.com/droxey/makeclones/releases/download/vsnapshot/makeclones_linux_386.tar.gz"
      sha256 "5d9238d4a015b5be03a62c6471ea29dafe984d41a960c0d176f5167efdc10585"
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
