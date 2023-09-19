import 'package:bookly_with_clean_architecture/core/utils/errors.dart';
import 'package:bookly_with_clean_architecture/core/utils/no_parameter.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/utils/use_case.dart';
import '../entities/book_entity.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>,NoParameter>{
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParameter? param])async{
   return await homeRepo.fetchNewestBooks();
  }


}