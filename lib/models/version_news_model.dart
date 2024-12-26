import 'package:json_annotation/json_annotation.dart';

part 'version_news_model.g.dart';

@JsonSerializable()
class VersionNewsModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "translations")
  Translations? translations;
  @JsonKey(name: "images")
  List<String>? images;
  @JsonKey(name: "url")
  dynamic url;

  VersionNewsModel({
    this.id,
    this.translations,
    this.images,
    this.url,
  });

  VersionNewsModel copyWith({
    int? id,
    Translations? translations,
    List<String>? images,
    dynamic url,
  }) =>
      VersionNewsModel(
        id: id ?? this.id,
        translations: translations ?? this.translations,
        images: images ?? this.images,
        url: url ?? this.url,
      );

  factory VersionNewsModel.fromJson(Map<String, dynamic> json) =>
      _$VersionNewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$VersionNewsModelToJson(this);
}

@JsonSerializable()
class Translations {
  @JsonKey(name: "rus")
  Rus? rus;
  @JsonKey(name: "uz-cyrl")
  Rus? uzCyrl;
  @JsonKey(name: "uz-latn")
  Rus? uzLatn;

  Translations({
    this.rus,
    this.uzCyrl,
    this.uzLatn,
  });

  Translations copyWith({
    Rus? rus,
    Rus? uzCyrl,
    Rus? uzLatn,
  }) =>
      Translations(
        rus: rus ?? this.rus,
        uzCyrl: uzCyrl ?? this.uzCyrl,
        uzLatn: uzLatn ?? this.uzLatn,
      );

  factory Translations.fromJson(Map<String, dynamic> json) =>
      _$TranslationsFromJson(json);

  Map<String, dynamic> toJson() => _$TranslationsToJson(this);
}

@JsonSerializable()
class Rus {
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "title")
  String? title;

  Rus({
    this.description,
    this.title,
  });

  Rus copyWith({
    String? description,
    String? title,
  }) =>
      Rus(
        description: description ?? this.description,
        title: title ?? this.title,
      );

  factory Rus.fromJson(Map<String, dynamic> json) => _$RusFromJson(json);

  Map<String, dynamic> toJson() => _$RusToJson(this);
}
