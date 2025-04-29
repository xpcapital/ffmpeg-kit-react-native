Pod::Spec.new do |s|
  s.name         = "xpcapital-ffmpeg-kit-ios-full-gpl"
  s.version      = "6.0.2"
  s.summary      = "FFmpeg Kit iOS Full GPL Shared Framework"
  s.description  = "Includes FFmpeg with dav1d, fontconfig, freetype, fribidi..."
  s.homepage     = "https://github.com/xpcapital/ffmpeg-kit"
  s.license      = {
    :type => "LGPL-3.0",
    :file => "LICENSE"
  }
  s.authors      = {
    "Liroo" => "liroo.pier@gmail.com"
  }

  s.platform     = :ios, "12.1"
  s.requires_arc = true
  s.libraries    = ["z", "bz2", "c++", "iconv"]

  s.source = {
    :http => "https://github.com/xpcapital/ffmpeg-kit-full-gpl/releases/download/6.0/Frameworks.zip"  
  }

  s.ios.frameworks = ["AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox"]

  s.ios.vendored_frameworks = 'Frameworks/*.xcframework'
end