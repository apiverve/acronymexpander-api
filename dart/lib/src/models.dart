/// Response models for the Acronym Expander API.

/// API Response wrapper.
class AcronymexpanderResponse {
  final String status;
  final dynamic error;
  final AcronymexpanderData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AcronymexpanderResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AcronymexpanderResponse.fromJson(Map<String, dynamic> json) => AcronymexpanderResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AcronymexpanderData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Acronym Expander API.

class AcronymexpanderData {
  String? acronym;
  List<AcronymexpanderDataExpansionsItem>? expansions;
  AcronymexpanderDataMostCommon? mostCommon;
  String? source;
  String? contextProvided;

  AcronymexpanderData({
    this.acronym,
    this.expansions,
    this.mostCommon,
    this.source,
    this.contextProvided,
  });

  factory AcronymexpanderData.fromJson(Map<String, dynamic> json) => AcronymexpanderData(
      acronym: json['acronym'],
      expansions: (json['expansions'] as List?)?.map((e) => AcronymexpanderDataExpansionsItem.fromJson(e)).toList(),
      mostCommon: json['most_common'] != null ? AcronymexpanderDataMostCommon.fromJson(json['most_common']) : null,
      source: json['source'],
      contextProvided: json['context_provided'],
    );
}

class AcronymexpanderDataExpansionsItem {
  String? expansion;
  String? description;
  String? category;

  AcronymexpanderDataExpansionsItem({
    this.expansion,
    this.description,
    this.category,
  });

  factory AcronymexpanderDataExpansionsItem.fromJson(Map<String, dynamic> json) => AcronymexpanderDataExpansionsItem(
      expansion: json['expansion'],
      description: json['description'],
      category: json['category'],
    );
}

class AcronymexpanderDataMostCommon {
  String? expansion;
  String? description;
  String? category;

  AcronymexpanderDataMostCommon({
    this.expansion,
    this.description,
    this.category,
  });

  factory AcronymexpanderDataMostCommon.fromJson(Map<String, dynamic> json) => AcronymexpanderDataMostCommon(
      expansion: json['expansion'],
      description: json['description'],
      category: json['category'],
    );
}

class AcronymexpanderRequest {
  String acronym;
  String? context;

  AcronymexpanderRequest({
    required this.acronym,
    this.context,
  });

  Map<String, dynamic> toJson() => {
      'acronym': acronym,
      if (context != null) 'context': context,
    };
}
