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
      sha256 "7b7377eeeb653bcdd32f842b73d2145acb81523a0a0b977bf4e116280616b1ed"
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
      sha256 "5a7f019da4f0d3d857f06135d6dcce115289d41a9336a8a8dd8061620af25de3"
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
