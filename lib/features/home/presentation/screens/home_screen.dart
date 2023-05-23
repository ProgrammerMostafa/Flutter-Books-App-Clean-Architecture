import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/features/home/presentation/widgets/home_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}