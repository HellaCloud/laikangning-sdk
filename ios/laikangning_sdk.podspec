#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint laikangning_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'laikangning_sdk'
  s.version          = '0.0.1'
  s.summary          = '莱康宁sdk对接'
  s.description      = <<-DESC
莱康宁sdk对接
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.static_framework = true

  s.source_files = 'Classes', 'Classes/**/*.{h,m,swift}', 'Framework/*.h'
  s.vendored_libraries = 'Framework/liblame.a', 'Framework/libLMTPDecoder.a'
  s.public_header_files = 'Framework/*.h', 'Classes/LaikangningSdkPlugin.h'

  s.dependency 'Flutter'
  s.dependency 'Protobuf', '~> 3.21.8'
  s.dependency 'SwiftProtobuf', '~> 1.20.2'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
