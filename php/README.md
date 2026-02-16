# Acronym Expander API - PHP Package

Acronym Expander is an AI-powered tool for expanding acronyms to their full meanings. It uses a dictionary of common acronyms and AI for unknown ones, with optional context for better accuracy.

## Installation

Install via Composer:

```bash
composer require apiverve/acronymexpander
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Acronymexpander\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'acronym' => 'API',
    'context' => 'General'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Acronymexpander\Client;
use APIVerve\Acronymexpander\Exceptions\APIException;
use APIVerve\Acronymexpander\Exceptions\ValidationException;

try {
    $response = $client->execute(['acronym' => 'API', 'context' => 'General']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/api/acronymexpander).

## Support

- Website: [https://apiverve.com/marketplace/acronymexpander?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/acronymexpander?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
