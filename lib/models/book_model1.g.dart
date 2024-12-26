// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel1 _$BookModel1FromJson(Map<String, dynamic> json) => BookModel1(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String,
    );

Map<String, dynamic> _$BookModel1ToJson(BookModel1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
    };
