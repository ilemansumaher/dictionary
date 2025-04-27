class DataModelEn {
  final String? word;
  final String? pronunciation;
  final List<Definition> definitionRu;
  final List<Definition> definitionTr;

  DataModelEn({
    required this.word,
    required this.pronunciation,
    required this.definitionRu,
    required this.definitionTr,
  });

  factory DataModelEn.fromJson(Map<String, dynamic> json) {
    return DataModelEn(
      word: json['word'],
      pronunciation: json['pronunciation'],
      definitionRu: (json['definition_ru'] as List)
          .map((e) => Definition.fromJson(e))
          .toList(),
      definitionTr: (json['definition_tr'] as List)
          .map((e) => Definition.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'word': word,
      'pronunciation': pronunciation,
      'definition_ru': definitionRu.map((e) => e.toJson()).toList(),
      'definition_tr': definitionTr.map((e) => e.toJson()).toList(),
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
