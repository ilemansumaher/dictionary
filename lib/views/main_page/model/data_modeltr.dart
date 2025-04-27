class DataModelTr {
  final String? word;
  final String? pronunciation;
  final List<Definition> definitionEn;
  final List<Definition> definitionRu;

  DataModelTr({
    required this.word,
    required this.pronunciation,
    required this.definitionEn,
    required this.definitionRu,
  });

  factory DataModelTr.fromJson(Map<String, dynamic> json) {
    return DataModelTr(
      word: json['word'],
      pronunciation: json['pronunciation'],
      definitionEn: (json['definition_en'] as List)
          .map((e) => Definition.fromJson(e))
          .toList(),
      definitionRu: (json['definition_ru'] as List)
          .map((e) => Definition.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'word': word,
      'pronunciation': pronunciation,
      'definition_en': definitionEn.map((e) => e.toJson()).toList(),
      'definition_ru': definitionRu.map((e) => e.toJson()).toList(),
    };
  }
}

class Definition {
  final String meaning;
  final String type;

  Definition({
    required this.meaning,
    required this.type,
  });

  factory Definition.fromJson(Map<String, dynamic> json) {
    return Definition(
      meaning: json['meaning'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'meaning': meaning,
      'type': type,
    };
  }
}
