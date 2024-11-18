import 'package:bookly/Featuers/home/data/model/Book_model.dart';
import 'package:bookly/Featuers/home/domain/entities/book_entity.dart';
import 'package:bookly/core/utils/api_service.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var response = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');

    List<BookEntity> books = getBooksList(response);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}

List<BookEntity> getBooksList(Map<String, dynamic> response) {
  List<BookEntity> books = [];
  for (var bookMap in response['items']) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}