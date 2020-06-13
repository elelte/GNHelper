Pod::Spec.new do |spec|
  spec.name         = "GNHelper"
  spec.version      = "0.1.0"
  spec.summary      = "GNHelper Framework"
  spec.description  = "Super GNHelper Framework"
  spec.homepage     = "https://github.com/elelte/GNHelper"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "elelte" => "ganalpratama@gmail.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/elelte/GNHelper.git", :branch => "master", :tag => spec.version }
  spec.source_files  = "GNHelper/**/*"
end
