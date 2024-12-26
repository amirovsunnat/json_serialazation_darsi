// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionNewsModel _$VersionNewsModelFromJson(Map<String, dynamic> json) =>
    VersionNewsModel(
      id: (json['id'] as num?)?.toInt(),
      translations: json['translations'] == null
          ? null
          : Translations.fromJson(json['translations'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'],
    );

Map<String, dynamic> _$VersionNewsModelToJson(VersionNewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'translations': instance.translations,
      'images': instance.images,
      'url': instance.url,
    };

Translations _$TranslationsFromJson(Map<String, dynamic> json) => Translations(
      rus: json['rus'] == null
          ? null
          : Rus.fromJson(json['rus'] as Map<String, dynamic>),
      uzCyrl: json['uz-cyrl'] == null
          ? null
          : Rus.fromJson(json['uz-cyrl'] as Map<String, dynamic>),
      uzLatn: json['uz-latn'] == null
          ? null
          : Rus.fromJson(json['uz-latn'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TranslationsToJson(Translations instance) =>
    <String, dynamic>{
      'rus': instance.rus,
      'uz-cyrl': instance.uzCyrl,
      'uz-latn': instance.uzLatn,
    };

Rus _$RusFromJson(Map<String, dynamic> json) => Rus(
      description: json['description'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$RusToJson(Rus instance) => <String, dynamic>{
      'description': instance.description,
      'title': instance.title,
    };
