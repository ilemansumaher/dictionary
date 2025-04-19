// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
    List<Dictionary> dictionary;

    DataModel({
        required this.dictionary,
    });

    factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        dictionary: List<Dictionary>.from(json["dictionary"].map((x) => Dictionary.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "dictionary": List<dynamic>.from(dictionary.map((x) => x.toJson())),
    };
}

class Dictionary {
    English english;
    English russian;
    English turkish;

    Dictionary({
        required this.english,
        required this.russian,
        required this.turkish,
    });

    factory Dictionary.fromJson(Map<String, dynamic> json) => Dictionary(
        english: English.fromJson(json["english"]),
        russian: English.fromJson(json["russian"]),
        turkish: English.fromJson(json["turkish"]),
    );

    Map<String, dynamic> toJson() => {
        "english": english.toJson(),
        "russian": russian.toJson(),
        "turkish": turkish.toJson(),
    };
}

class English {
    String word;
    String definition;

    English({
        required this.word,
        required this.definition,
    });

    factory English.fromJson(Map<String, dynamic> json) => English(
        word: json["word"],
        definition: json["definition"],
    );

    Map<String, dynamic> toJson() => {
        "word": word,
        "definition": definition,
    };
}
