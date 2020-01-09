#
# Be sure to run `pod lib lint PodResourcesModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodResourcesModule'
  s.version          = '0.1.0'
  s.summary          = 'PodResourcesModule example Pod module for external assets resources'
  s.homepage         = 'https://github.com/lechuckcaptain/TestResourcesIntoModule'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lechuckcaptain@gmail.com' => 'lechuckcaptain@gmail.com' }
  s.source           = { :git => 'https://github.com/lechuckcaptain@gmail.com/PodResourcesModule.git', :tag => s.version.to_s }
  s.swift_version    = '5.1'
  s.ios.deployment_target = '11.0'
  s.source_files = 'PodResourcesModule/Classes/**/*'
  
  # s.resource_bundles = {
  #  'PodResourcesModule' => ['PodResourcesModule/**/*.{xcassets}']
  # }
  
  s.resources = [
    "PodResourcesModule/**/*.{xcassets}"
  ]

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
