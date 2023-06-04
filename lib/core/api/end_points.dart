class EndPoints {
  static const String baseUrl = 'https://www.googleapis.com';
  static const String booksPath = '$baseUrl/books/v1/volumes';
  static const String booksFilter = 'full';
  static const String booksCategory = 'computer';
}


// https://www.googleapis.com/books/v1/volumes?projection=full&orderBy=newest&q=subject:Programming