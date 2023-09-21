import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/fetch_searched_books_use_case.dart';
import 'fetch_searched_books_states.dart';

class FetchSearchedBooksCubit extends Cubit<FetchSearchedBooksStates> {
  final FetchSearchedBooksUseCase fetchSearchedBooksUseCase;

  FetchSearchedBooksCubit(this.fetchSearchedBooksUseCase)
      : super(FetchSearchedBooksInitialState());

  FetchSearchedBooksCubit get(context) => BlocProvider.of(context);

  fetchSearchedBooks({required String search}) async {
    var response = await fetchSearchedBooksUseCase.call(search);
    response.fold(
      (failure) => emit(FetchSearchedBooksErrorState(failure.errorMessage)),
      (books) => emit(FetchSearchedBooksSuccessfullyState(books)),
    );
  }
}
