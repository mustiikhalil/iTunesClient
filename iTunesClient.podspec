#
#  Be sure to run `pod spec lint iTunesClient.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "iTunesClient"
  spec.version      = "1.0.0"
  spec.summary      = "iTunesClient is a client for the itunes public api and testing private repos for work"
  spec.description  = "iTunesClient is a client for the itunes public api. This is just to test private repos on cocoapods, and maybe migrate to it at work"
  spec.license      = "MIT"
  spec.author             = { "mustii" => "mustii@mmk.one" }
  spec.platform     = :ios, "11.0"
  spec.homepage = "https://github.com/mustiikhalil"
  spec.source       = { :git => "https://github.com/mustiikhalil/iTunesClient.git", :tag => "1.0.0" }
  spec.swift_version = "4.2"
end
