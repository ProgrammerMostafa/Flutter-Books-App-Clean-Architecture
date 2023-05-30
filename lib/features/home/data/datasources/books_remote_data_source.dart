import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_points.dart';
import '../models/book_model.dart';

abstract class BaseBooksRemoteDataSource {
  Future<List<BookModel>> fetchNewsetBooks();
  Future<List<BookModel>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchSimilarBooks({required String category});
}

class BooksRemoteDataSource extends BaseBooksRemoteDataSource {
  final ApiConsumer apiConsumer;

  BooksRemoteDataSource(this.apiConsumer);

  @override
  Future<List<BookModel>> fetchNewsetBooks() async {
    final response = await apiConsumer.getData(
      EndPoints.booksPath,
      queryParameters: {
        'filter': 'free-ebooks',
        'orderBy': 'newest',
        'q': 'Programming',
      },
    );
    return List<BookModel>.from(
      (response['items'] as List).map((e) => BookModel.fromJson(e)),
    );
  }

  @override
  Future<List<BookModel>> fetchFeaturedBooks() async {
    final response = await apiConsumer.getData(
      EndPoints.booksPath,
      queryParameters: {
        'filter': 'free-ebooks',
        'q': 'Programming',
      },
    );
    return List<BookModel>.from(
      (response['items'] as List).map((e) => BookModel.fromJson(e)),
    );
  }

  @override
  Future<List<BookModel>> fetchSimilarBooks({required String category}) async {
    final response = await apiConsumer.getData(
      EndPoints.booksPath,
      queryParameters: {
        'filter': 'free-ebooks',
        'q': 'Programming',
      },
    );
    return List<BookModel>.from(
      (response['items'] as List).map((e) => BookModel.fromJson(e)),
    );
  }
}
