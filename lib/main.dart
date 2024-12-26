import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonencode_decode_darsi/card.dart';
import 'package:jsonencode_decode_darsi/data/book_data.dart';
import 'package:jsonencode_decode_darsi/models/book_model.dart';
import 'package:jsonencode_decode_darsi/models/person_model.dart';

// 4


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Person person = Person.fromJson();
    List<dynamic> booksData = jsonDecode(BookData.bookData);
    List<BookModel> books = booksData
        .map(
          (e) => BookModel.fromJson(e),
        )
        .toList();
    return Scaffold(
      body: GridView.builder(
        itemCount: books.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          BookModel book = books[index];
          return BookCard(
            bookModel: book,
          );
        },
      ),
    );
  }
}
