#
# Be sure to run `pod lib lint CRIMSDKCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CRIMSDKCore'
  s.version          = '1.0.1'
  s.summary          = 'CRIM-SDK-Core'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  iOS版本IM SDK 可以轻松打造具备聊天、社交功能的app。
                       DESC

  s.homepage         = 'https://github.com/cloudroomSDK/CRIM-SDK-CORE-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CRIMSDKCore' => 'https://github.com/cloudroomSDK/CRIM-SDK-CORE-iOS' }
  s.source           = { :git => 'https://github.com/cloudroomSDK/CRIM-SDK-CORE-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'    
    
  valid_archs = ['armv7s','arm64','x86_64']
  s.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }
  s.pod_target_xcconfig = {
      'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)'
  }
  
  s.vendored_frameworks = 'Framework/*.xcframework'
end
