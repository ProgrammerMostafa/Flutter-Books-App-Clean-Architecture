import 'package:equatable/equatable.dart';

class Book extends Equatable {
  final String id;
  final String title;
  final String publishedDate;
  final String imageUrl;
  final String previewLink;
  final List<String>? authors;
  final List<String>? categories;
  final double? averageRating;
  final int? ratingsCount;

  const Book({
    required this.id,
    required this.title,
    required this.publishedDate,
    required this.imageUrl,
    required this.previewLink,
    required this.authors,
    required this.categories,
    required this.averageRating,
    required this.ratingsCount,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        publishedDate,
        imageUrl,
        previewLink,
        authors,
        categories,
        averageRating,
        ratingsCount,
      ];
}
