import 'package:bookly/Featuers/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Featuers/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/Featuers/home/domain/entities/book_entity.dart';
import 'package:bookly/Featuers/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRemoteDataSource homeRemoteDataSource;
  HomeLocalDataSource homeLocalDataSource ;

  HomeRepoImpl({required this.homeLocalDataSource , required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks() ;
      if (books.isNotEmpty){
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    }catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async{
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks() ;
      if (books.isNotEmpty){
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    }catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }return left(ServerFailure(e.toString()));
    }
  }

}