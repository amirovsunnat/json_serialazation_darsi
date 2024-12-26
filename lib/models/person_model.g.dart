// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      name: json['name'] as String,
      sureName: json['sureName'] as String,
      age: (json['age'] as num).toInt(),
      address: json['address'] as String,
      isStudent: json['isStudent'] as bool,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'name': instance.name,
      'sureName': instance.sureName,
      'age': instance.age,
      'address': instance.address,
      'isStudent': instance.isStudent,
    };
