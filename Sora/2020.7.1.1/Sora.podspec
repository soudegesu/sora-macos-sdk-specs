Pod::Spec.new do |s|
  s.name         = "Sora"
  s.version      = "2020.7.1.1"
  s.summary      = "Sora macOS SDK"
  s.description  = <<-DESC
                   A library to develop Sora client applications.
                   DESC
  s.homepage     = "https://github.com/soudegesu/sora-macos-sdk"
  s.license      = { :type => "Apache License, Version 2.0" }
  s.authors      = { "Shiguredo Inc." => "sora@shiguredo.jp",
                      "soudegesu" => "" }
  s.platform     = :osx, "10.15"
  s.source       = {
      :git => "https://github.com/soudegesu/sora-macos-sdk.git",
      :tag => s.version
  }
  s.source_files  = "Sora/**/*.swift"
  s.resources = ['Sora/info.json']
  s.prepare_command = 'sh Sora/info.sh'
  s.dependency "WebRTC", '90.4430.3.0'
  s.dependency "Starscream", "3.1.1"
end
