#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

license = <<EOT
License text here.
EOT

Pod::Spec.new do |s|
  s.name             = "KiipSDK"
  s.version          = "2.0.8"
  s.summary          = "KiipSDK."
  s.description      = <<-DESC
			Simple event based monetization library. Engage users with rewards from brands they love.
                       DESC
  s.homepage         = "http://www.kiip.com/"
  s.license          = { :type => 'Commercial', :text => license }
  s.author           = { "Kiip" => "http://www.kiip.com" }
  s.source           = { :git => "https://github.com/humajime/KiipSDKCocoaPods.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kiip'

  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.default_subspec = 'KiipSDK'

  s.subspec 'KiipSDK' do |ss|
    ss.source_files = 'Kiip/*.h'
    ss.preserve_paths = 'Kiip/*.a'
    ss.libraries = "z", "Kiip"
    ss.frameworks = 'CoreTelephony', 'QuartzCore', 'SystemConfiguration', 'AdSupport', 'Passkit', 'MediaPlayer'
    #  ss.weak_frameworks = 'AdSupport', 'StoreKit'
    ss.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/KiipSDK/Kiip/"' }
    #  ss.resources = 'Kiip/*.png'
    ss.resource_bundle = { 'KiipSDKResources' => 'Kiip/*.png' }
  end
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'JSONKit', '~> 1.4'
end
