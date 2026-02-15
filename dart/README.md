# Acronym Expander API - Dart/Flutter Client

Acronym Expander is an AI-powered tool for expanding acronyms to their full meanings. It uses a dictionary of common acronyms and AI for unknown ones, with optional context for better accuracy.

[![pub package](https://img.shields.io/pub/v/apiverve_acronymexpander.svg)](https://pub.dev/packages/apiverve_acronymexpander)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Acronym Expander API](https://apiverve.com/marketplace/acronymexpander?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_acronymexpander: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_acronymexpander/apiverve_acronymexpander.dart';

void main() async {
  final client = AcronymexpanderClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'acronym': 'API',
      'context': 'General'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Acronym Expander API](https://apiverve.com/marketplace/acronymexpander?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/acronymexpander](https://docs.apiverve.com/ref/acronymexpander?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
