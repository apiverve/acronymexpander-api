# Acronym Expander API - Ruby Gem

Acronym Expander resolves acronyms and abbreviations into their full meanings, complete with subject categories and definitions. Submit any short term up to 20 characters to get matching expansions and explanations for each domain.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_acronymexpander'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_acronymexpander
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_acronymexpander'

# Initialize the client
client = APIVerve::Acronymexpander::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  acronym: "API",
  context: "General"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ acronym: "API", context: "General" })
  puts response["data"]
rescue APIVerve::Acronymexpander::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Acronymexpander::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Acronymexpander::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "acronym": "API",
    "expansions": [
      {
        "expansion": "Application Programming Interface",
        "description": "A set of protocols for building software",
        "category": "technology"
      }
    ],
    "most_common": {
      "expansion": "Application Programming Interface",
      "description": "A set of protocols for building software",
      "category": "technology"
    },
    "source": "dictionary",
    "context_provided": "software"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/acronymexpander?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/acronymexpander?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/acronymexpander?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
