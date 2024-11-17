import 'package:bookly/Featuers/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>>  fetchNewestBooks();
}