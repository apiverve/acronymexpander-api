Pod::Spec.new do |s|
  s.name             = 'APIVerveAcronymExpander'
  s.version          = '1.2.3'
  s.summary          = 'Acronym Expander resolves acronyms and abbreviations into their full meanings, complete with subject categories and definitions.'
  s.description      = <<-'DESC'
Acronym Expander resolves acronyms and abbreviations into their full meanings, complete with subject categories and definitions. Submit any short term up to 20 characters to get matching expansions and explanations for each domain.

This iOS/macOS SDK provides a convenient way to access the Acronym Expander from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/acronymexpander?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/acronymexpander-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveAcronymExpander/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
