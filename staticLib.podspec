#
#  Be sure to run `pod spec lint staticLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "staticLib"
  s.version      = "0.0.1"
  s.summary      = "include a static lib via Cocoapods!"

  s.description  = <<-DESC
			This doesn't really do anything and is meant to explore
		 	static lib distribution through CocoaPods
                   DESC

  s.homepage     = "https://github.com/zmcartor/staticLib"
  s.license      = "MIT Licenses are weird"
  s.author       = { "Zach" => "zmcartor@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/zmcartor/staticLib.git", :commit => "5ba3a9c446" }

  s.source_files  = '**/*.h'
  s.preserve_paths = 'libStaticLib.a'
  s.ios.vendored_libraries = 'libStaticLib.a', 'StaticLib'
  s.framework = 'UIKit'
  s.requires_arc = true
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/staticLib/**"' , 'OTHER_LDFLAGS' => '-lObjC'}

end
