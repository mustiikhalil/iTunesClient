#
#  Be sure to run `pod spec lint iTunesClient.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "iTunesClient"
  spec.version      = "0.2.0"
  spec.summary      = "A short description of iTunesClient."
  spec.description  = "This is just to test private repos on cocoapods"
  spec.license      = "MIT"
  spec.author             = { "mustii" => "mustii@mmk.one" }
  spec.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/mustiikhalil/iTunesClient", :tag => "0.3.0" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
  s.swift_version = "4.2"
end
