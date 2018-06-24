#
#  Be sure to run `pod spec lint ZSModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "ZSModule"
  s.version      = "0.0.9"
  s.summary      = "测试demo"


  s.description  = <<-DESC
  就是用来测试的demo，没有什么意思。
                   DESC

  s.homepage     = "https://github.com/zhangguozhong/ZSModule.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"



  #s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "zhangguozhong" => "494316382@qq.com" }
  # Or just: s.author    = "zhangguozhong"
  # s.authors            = { "zhangguozhong" => "494316382@qq.com" }
  # s.social_media_url   = "http://twitter.com/zhangguozhong"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "9.0"

  #  When using multiple platforms
  s.ios.deployment_target = "9.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/zhangguozhong/ZSModule.git", :tag => "#{s.version}" }

  #s.source_files  = "Classes", "Classes/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  s.default_subspec = 'FrameWork'

  s.subspec 'Source' do |source|
    source.subspec 'Home' do |home|
      home.subspec 'Controller' do |controller|
        controller.source_files = 'ZSModule/Classes/Home/Controller/*.{h,m}'
        controller.dependency 'ZSModule/Source/Module'
      end
    end

    source.subspec 'Service' do |service|
      service.source_files = 'ZSModule/Classes/Service/*.{h,m}'
    end

    source.subspec 'Module' do |modules|
      modules.source_files = 'ZSModule/Classes/Module/*.{h,m}'
      modules.public_header_files = 'ZSModule/Classes/Module/*.h'
    end

    source.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ENABLE_SOURCE=1' }
    source.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ENABLE_SOURCE=1' }
  end

  s.subspec 'FrameWork' do |framework|
  	framework.ios.vendored_frameworks = 'ZSModule/Pod/*.framework'
    framework.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'ENABLE_FRAMEWORK=1' }
  end

  


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
