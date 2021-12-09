#
# Be sure to run `pod lib lint MoyaResultValidate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MoyaResultValidate'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MoyaResultValidate.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/insect/MoyaResultValidate'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'insect' => '704861917@qq.com' }
  s.source           = { :git => 'https://github.com/insect/MoyaResultValidate.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  
  s.ios.deployment_target = '9.0'
  s.dependency "Moya"
  s.source_files = 'MoyaResultValidate/Classes/**/*'
  
end
