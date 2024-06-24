Pod::Spec.new do |s|
  s.name             = 'CRIMSDKCore'
  s.version          = '2.7.1'
  s.summary          = 'CRIM-SDK-Core'
  s.description      = <<-DESC
  iOS版本IM SDK 可以轻松打造具备聊天、社交功能的app。
                       DESC

  s.homepage         = 'https://github.com/cloudroomSDK/crim-sdk-core-ios.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CRIMSDKCore' => 'https://github.com/cloudroomSDK/crim-sdk-core-ios.git' }
  s.source           = { :git => 'https://github.com/cloudroomSDK/crim-sdk-core-ios.git', :tag => s.version.to_s }

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
