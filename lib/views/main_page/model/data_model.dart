class WordEntry {
  final LanguageEntry english;
  final LanguageEntry russian;
  final LanguageEntry turkish;

  WordEntry({
    required this.english,
    required this.russian,
    required this.turkish,
  });

  factory WordEntry.fromJson(Map<String, dynamic> json) {
    return WordEntry(
      english: LanguageEntry.fromJson(json['english']),
      russian: LanguageEntry.fromJson(json['russian']),
      turkish: LanguageEntry.fromJson(json['turkish']),
    );
  }
}

class LanguageEntry {
  final String word;
  final String definition;

  LanguageEntry({required this.word, required this.definition});

  factory LanguageEntry.fromJson(Map<String, dynamic> json) {
    return LanguageEntry(
      word: json['word'],
      definition: json['definition'],
    );
  }
}
