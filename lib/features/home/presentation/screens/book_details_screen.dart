
import 'package:flutter/material.dart';
import '../widgets/book_details_view_body.dart';

class BookDetialsScreen extends StatelessWidget {
  const BookDetialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
