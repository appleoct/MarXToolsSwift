#
# Be sure to run `pod lib lint MarXToolsSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name         = "MarXToolsSwift"
  s.version      = "1.1.5"
  s.summary      = "MarXSwfit"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = "Nothing to said"

  s.homepage     = "https://github.com/codeRiding/MarXToolsSwift"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "codeRiding" => "coderiding@gmail.com" }
  # Or just: s.author    = "codeRiding"
  # s.authors            = { "codeRiding" => "coderiding@gmail.com" }
  # s.social_media_url   = "http://twitter.com/codeRiding"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #
  
  s.frameworks       = 'UIKit','AVFoundation'
  
  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/codeRiding/MarXToolsSwift.git", :tag => s.version}
  
  

  s.ios.deployment_target = '8.0'

  s.subspec 'Handler' do |ss|
    ss.source_files = 'MarXToolsSwift/Classes/Handler/**/*'
  end

  s.subspec 'Extensions' do |ss|
    ss.source_files = 'MarXToolsSwift/Classes/Extensions/**/*'
  end

  s.subspec 'Inherit' do |ss|
    ss.source_files = 'MarXToolsSwift/Classes/Inherit/**/*'
  end

  s.subspec 'ThirdParty' do |ss|
    ss.source_files = 'MarXToolsSwift/Classes/ThirdParty/**/*'
    ss.dependency 'Toast-Swift', '3.0.1'
    ss.dependency 'Toaster', '2.1.1'
  end
  
  # s.resource_bundles = {
  #   'MarXToolsSwift' => ['MarXToolsSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
