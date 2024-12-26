// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'person_model.g.dart';

@JsonSerializable()
class Person {
  final String name;
  final String sureName;
  final int age;
  final String address;
  final bool isStudent;

  Person({
    required this.name,
    required this.sureName,
    required this.age,
    required this.address,
    required this.isStudent,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
