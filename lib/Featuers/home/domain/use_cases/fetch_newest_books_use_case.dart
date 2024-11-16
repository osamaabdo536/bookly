import 'package:bookly/Featuers/home/domain/entities/book_entity.dart';
import 'package:bookly/Featuers/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity> , Noparam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([Noparam? param]) async{
    return await homeRepo.fetchNewestBooks();
  }
}