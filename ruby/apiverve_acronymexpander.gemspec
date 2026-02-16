# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_acronymexpander"
  spec.version       = "1.1.13"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Acronym Expander API - Ruby Client"
  spec.description   = "Acronym Expander is an AI-powered tool for expanding acronyms to their full meanings. It uses a dictionary of common acronyms and AI for unknown ones, with optional context for better accuracy."
  spec.homepage      = "https://apiverve.com/marketplace/acronymexpander?utm_source=ruby&utm_medium=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/acronymexpander-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://github.com/apiverve/acronymexpander-API/blob/main/CHANGELOG.md"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/api/acronymexpander"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
