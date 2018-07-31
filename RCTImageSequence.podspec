require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RCTImageSequence"
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = "https://github.com/madsleejensen/react-native-image-sequence"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => package['repository']['url'], :tag => "v#{s.version}" }
  s.source_files        = [ "ios/RCTImageSequence/*.h",
                            "ios/RCTImageSequence/*.m"]
  
  s.platform            = :ios, "7.0"
  s.dependency 'React'
end
