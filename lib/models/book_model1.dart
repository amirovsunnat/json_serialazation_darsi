import 'package:json_annotation/json_annotation.dart';

part 'book_model1.g.dart';

@JsonSerializable()
class BookModel1 {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "title")
    String title;
    @JsonKey(name: "author")
    String author;

    BookModel1({
        required this.id,
        required this.title,
        required this.author,
    });

    factory BookModel1.fromJson(Map<String, dynamic> json) => _$BookModel1FromJson(json);

    Map<String, dynamic> toJson() => _$BookModel1ToJson(this);
}
