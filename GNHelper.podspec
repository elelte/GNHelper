Pod::Spec.new do |s|
  s.name         = "GNHelper"
  s.version      = "0.0.1"
  s.summary      = "GNHelper Framework"
  s.description  = "Super GNHelper Framework"
  s.homepage     = "https://github.com/elelte/GNHelper"
  s.license      = "MIT"
  s.author       = { "elelte" => "ganalpratama@gmail.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/elelte/GNHelper.git", :branch => "master", :tag => s.version }
  s.source_files  = "GNHelper/**/*"
end
