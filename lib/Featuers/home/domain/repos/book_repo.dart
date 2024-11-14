import 'package:bookly/Featuers/home/domain/entities/book_entity.dart';

abstract class BookRepo{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}