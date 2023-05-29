import '../../domain/entities/book.dart';

class BookModel extends Book {
  const BookModel({
    required super.id,
    required super.title,
    required super.publishedDate,
    required super.imageUrl,
    required super.previewLink,
    required super.authors,
    required super.categories,
    required super.averageRating,
    required super.ratingsCount,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    dynamic averageRating = json['volumeInfo']['averageRating'];
    return BookModel(
      id: json['id'],
      title: json['volumeInfo']['title'],
      publishedDate: json['volumeInfo']['publishedDate'],
      imageUrl: json['volumeInfo']['imageLinks']['thumbnail'],
      previewLink: json['volumeInfo']['previewLink'],
      authors: null,
      categories: null,
      averageRating: averageRating?.toDouble(),
      ratingsCount: json['volumeInfo']['ratingsCount'],
    );
  }
}
