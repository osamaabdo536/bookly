import 'package:bookly/Featuers/home/data/model/Book_model.dart';
import 'package:bookly/Featuers/home/domain/entities/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import '../../../../core/utils/functions/save_books.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var response = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');

    List<BookEntity> books = getBooksList(response);

    saveBooksData(books, kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var response = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&sorting=newest&q=programming');

    List<BookEntity> books = getBooksList(response);

    saveBooksData(books, kNewestBox);

    return books;
  }
}

List<BookEntity> getBooksList(Map<String, dynamic> response) {
  List<BookEntity> books = [];

  if (response['items'] == null || response['items'] is! List) {
    return books;
  }

  for (var bookMap in response['items']) {
    try {
      var book = BookModel.fromJson(bookMap);
      books.add(book);
    } catch (e) {
    }
  }

  return books;
}
