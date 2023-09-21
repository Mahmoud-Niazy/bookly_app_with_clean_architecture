import 'package:bookly_with_clean_architecture/core/errors/errors.dart';
import 'package:bookly_with_clean_architecture/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class FetchSearchedBooksUseCase extends UseCase<List<BookEntity>,String>{
  final HomeRepo homeRepo ;

  FetchSearchedBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([String? param])async {
    return await homeRepo.fetchSearchedBooks(search: param!);
  }

}