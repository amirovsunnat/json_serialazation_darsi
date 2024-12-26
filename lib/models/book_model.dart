// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'book_model.g.dart';

@JsonSerializable()
class BookModel {
  final int id;
  final String title;
  final String author;
  @JsonKey(name: "book_year")
  final String bookPublishedYear;

  BookModel({
    required this.id,
    required this.title,
    required this.author,
    required this.bookPublishedYear,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
