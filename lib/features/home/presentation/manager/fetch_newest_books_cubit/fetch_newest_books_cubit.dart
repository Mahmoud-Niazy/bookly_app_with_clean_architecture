import 'package:bookly_with_clean_architecture/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'fetch_newest_books_states.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksStates> {
  FetchNewestBooksCubit(this.fetchNewestBooksUseCase)
      : super(FetchNewestBooksInitialState());

  static FetchNewestBooksCubit get(context) => BlocProvider.of(context);

  FetchNewestBooksUseCase fetchNewestBooksUseCase;

  fetchNewestBooks() async {
    var data = await fetchNewestBooksUseCase.call();
    data.fold(
      (failure) => emit(FetchNewestBooksErrorState(failure.errorMessage)),
      (books) => emit(FetchNewestBooksSuccessfullyState(books)),
    );
  }
}
