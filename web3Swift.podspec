

Pod::Spec.new do |spec|

  spec.name         = "web3Swift"
  spec.version      = "1.0.0"
  spec.summary      = "web3 API"

  spec.description  = <<-DESC
web3 API and BIP44 KeyStore 
                   DESC

  spec.homepage     = 'https://jinsikhan@bitbucket.org/coinplugin/web3swift'
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = 'MIT'
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { 'Benjamin Han' => 'jshan@coinplug.com' }
  # spec.social_media_url   = "https://twitter.com/"

  spec.platform     = :ios, '11.2'
  spec.ios.deployment_target = '11.2'
  spec.swift_version = '4.1'
  spec.module_name = 'web3Swift'

  spec.source       = { :git => 'https://jinsikhan@bitbucket.org/coinplugin/web3swift.git', :tag => spec.version.to_s }


  spec.source_files = 'web3Swift-Ethereum/web3Swift-Ethereum.h', 'web3Swift-Ethereum/sources/**/*.swift', 'web3Swift-Ethereum/lib/**/*.{c,h}'

  spec.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]' => '$(PODS_TARGET_SRCROOT)/web3Swift-Ethereum/lib/**',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]' => '$(PODS_TARGET_SRCROOT)/web3Swift-Ethereum/lib/**'
  }

  spec.preserve_paths = 'web3Swift-Ethereum/lib/**/module.map'
  spec.public_header_files = 'web3Swift-Ethereum/web3Swift-Ethereum.h'

  # spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  spec.dependency 'BigInt', '~> 3.1'
  spec.dependency 'EthereumAddress', '~> 1.0.0'
  spec.dependency 'scrypt', '~> 2.0'
  spec.dependency 'secp256k1_swift', '~> 1.0.3'
  spec.dependency 'SwiftRLP', '~> 1.1'
  spec.dependency 'EthereumAddress', '~> 1.0.0'

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

end