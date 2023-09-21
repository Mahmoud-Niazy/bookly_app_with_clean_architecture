import '../../../domain/entities/book_entity.dart';

abstract class FetchSearchedBooksStates{}

class FetchSearchedBooksInitialState extends FetchSearchedBooksStates{}

class FetchSearchedBooksLoadingState extends FetchSearchedBooksStates{}
class FetchSearchedBooksSuccessfullyState extends FetchSearchedBooksStates{
  final List<BookEntity> books;
  FetchSearchedBooksSuccessfullyState(this.books);
}
class FetchSearchedBooksErrorState extends FetchSearchedBooksStates{
  final String error;
  FetchSearchedBooksErrorState(this.error);
}

