class WordEntry {
  final String word;
  final List<Definition> definition;

  WordEntry({required this.word, required this.definition});

  factory WordEntry.fromJson(Map<String, dynamic> json) {
    return WordEntry(
      word: json['word'],
      definition: (json['definition'] as List)
          .map((e) => Definition.fromJson(e))
          .toList(),
    );
  }
}

class Definition {
  final List<Translate> translate;

  Definition({required this.translate});

  factory Definition.fromJson(Map<String, dynamic> json) {
    return Definition(
      translate: (json['translate'] as List)
          .map((e) => Translate.fromJson(e))
          .toList(),
    );
  }
}

class Translate {
  final List<KelimeType> kelime;
  final String lang;
  final List<String> description;

  Translate({
    required this.kelime,
    required this.lang,
    required this.description,
  });

  factory Translate.fromJson(Map<String, dynamic> json) {
    return Translate(
      kelime: (json['kelime'] as List)
          .map((e) => KelimeType.fromJson(e))
          .toList(),
      lang: json['lang'],
      description: List<String>.from(json['description']),
    );
  }
}

class KelimeType {
  final String kelime;
  final String type;

  KelimeType({required this.kelime, required this.type});

  factory KelimeType.fromJson(Map<String, dynamic> json) {
    return KelimeType(
      kelime: json['kelime'],
      type: json['type'],
    );
  }
}
