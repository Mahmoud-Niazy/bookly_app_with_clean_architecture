import 'package:bookly_with_clean_architecture/core/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase <Type,Param> {
  Future<Either<Failure,Type>>call([Param param]);
}