require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'AppCenter-SDK-React-Native/appcenter', 'package.json')))

Pod::Spec.new do |s|
  s.name              = "AppCenterReactNative"
  s.version           = package['version']
  s.summary           = package['description']
  s.license           = package['license']
  s.homepage          = package['homepage']
  s.documentation_url = "https://docs.microsoft.com/en-us/appcenter/"

  s.author           = { 'Microsoft' => 'appcentersdk@microsoft.com' }

  s.source            = { :git => "https://github.com/Microsoft/AppCenter-SDK-React-Native.git" }
  s.source_files      = "AppCenter-SDK-React-Native/appcenter/ios/AppCenterReactNative/*.{h,m}"
  s.platform          = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.requires_arc      = true
  s.vendored_frameworks = 'AppCenter/AppCenter-SDK-Apple/iOS/AppCenter.framework', 'AppCenterReactNativeShared/AppCenterReactNativeShared.framework'

  s.static_framework  = true
  s.dependency 'AppCenter'
  s.dependency 'AppCenterReactNativeShared'
  s.dependency 'React'
end

