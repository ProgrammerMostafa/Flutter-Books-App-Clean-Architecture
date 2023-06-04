import 'package:flutter/material.dart';
import '../../domain/entities/book.dart';
import '../widgets/book_details_view_body.dart';

class BookDetialsScreen extends StatelessWidget {
  final Book bookData;
  const BookDetialsScreen({super.key, required this.bookData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(bookData: bookData),
    );
  }
}
