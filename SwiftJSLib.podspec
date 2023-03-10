Pod::Spec.new do |spec|

  spec.name         = "SwiftJSLib"
  spec.version      = "1.0.4"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = "This will be test description for inmplememting pod file."

  spec.homepage     = "https://github.com/ravimaru2022/SwiftJsPanel.git"
  spec.license      =  'MIT'
  spec.author       = { "ravimaru2022" => "ravi.maru@tudip.com" }

  spec.ios.deployment_target = "12.1"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/jeantimex/SwiftJsPanel.git", :tag => "#{spec.version}" }
  spec.source_files  = "SwiftJSLib/**/*.{h,m,swift}"
  spec.resources     = "SwiftJSLib/**/*.{html}"


end