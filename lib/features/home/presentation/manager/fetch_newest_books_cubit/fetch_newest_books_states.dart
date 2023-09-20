import '../../../domain/entities/book_entity.dart';

abstract class FetchNewestBooksStates{}

class FetchNewestBooksInitialState extends FetchNewestBooksStates{}

class FetchNewestBooksLoadingState extends FetchNewestBooksStates{}
class FetchNewestBooksSuccessfullyState extends FetchNewestBooksStates{
  List<BookEntity> books;
  FetchNewestBooksSuccessfullyState(this.books);
}
class FetchNewestBooksErrorState extends FetchNewestBooksStates{
  String error;
  FetchNewestBooksErrorState(this.error);
}