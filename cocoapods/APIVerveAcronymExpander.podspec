Pod::Spec.new do |s|
  s.name             = 'APIVerveAcronymExpander'
  s.version          = '1.1.9'
  s.summary          = 'Acronym Expander is an AI-powered tool for expanding acronyms to their full meanings. It uses a dictionary of common acronyms and AI for unknown ones, with optional context for better accuracy.'
  s.description      = <<-DESC
Acronym Expander is an AI-powered tool for expanding acronyms to their full meanings. It uses a dictionary of common acronyms and AI for unknown ones, with optional context for better accuracy.

This iOS/macOS SDK provides a convenient way to access the Acronym Expander from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  s.source           = { :git => 'https://github.com/apiverve/acronymexpander-api.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.14'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '5.0'

  s.swift_version = '5.0'

  s.source_files = 'Sources/APIVerveAcronymExpander/**/*'

  s.frameworks = 'Foundation'
end
