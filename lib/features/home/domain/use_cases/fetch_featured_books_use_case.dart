import 'package:bookly_with_clean_architecture/core/errors/errors.dart';
import 'package:bookly_with_clean_architecture/core/utils/no_parameter.dart';
import 'package:bookly_with_clean_architecture/core/use_case/use_case.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,NoParameter>{
  final HomeRepo homeRepo ;

  FetchFeaturedBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParameter? param])async {
   return await homeRepo.fetchFeaturedBooks();
  }

}