import '../../../domain/entities/book_entity.dart';

abstract class FetchFeaturedBooksStates{}

class FetchFeaturedBooksInitialState extends FetchFeaturedBooksStates{}

class FetchFeaturedBooksLoadingState extends FetchFeaturedBooksStates{}
class FetchFeaturedBooksSuccessfullyState extends FetchFeaturedBooksStates{
  List<BookEntity> books;
  FetchFeaturedBooksSuccessfullyState(this.books);
}
class FetchFeaturedBooksErrorState extends FetchFeaturedBooksStates{
  String error ;
  FetchFeaturedBooksErrorState(this.error);
}


