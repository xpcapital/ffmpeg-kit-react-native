require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platform          = :ios
  s.requires_arc      = true
  s.static_framework  = true

  s.source       = { :git => "https://github.com/xpcapital/ffmpeg-kit-react-native.git", :tag => "v#{s.version}" }
  
  s.dependency "React-Core"

  s.subspec "full-gpl" do |ss|
    ss.source_files = [
      "**/FFmpegKitReactNativeModule.m",
      "**/FFmpegKitReactNativeModule.h"
    ]
    ss.dependency "xpcapital-ffmpeg-kit-ios-full-gpl", "6.0.2"

    ss.ios.deployment_target = "12.1"
  end

end