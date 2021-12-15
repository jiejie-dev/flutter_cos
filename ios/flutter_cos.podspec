#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run 'pod lib lint flutter_cos.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_cos'
  s.version          = '0.0.1'
  s.summary          = 'A tencent cos util'
  s.description      = <<-DESC
A tencent cos util
                       DESC
  s.homepage         = 'https://github.com/lijianqiang12/flutter_cos'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'lijianqiang125@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'QCloudCOS'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
