import 'package:bookly_with_clean_architecture/core/errors/errors.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks();
Future<Either<Failure,List<BookEntity>>> fetchNewestBooks();
Future<Either<Failure,List<BookEntity>>> fetchSearchedBooks({required String search});
}