import 'package:dartz/dartz.dart';
import '../errors/failure.dart';

abstract class UseCase<Type , param> {
  Future<Either<Failure ,Type>> call([param param]);
}

class Noparam {}