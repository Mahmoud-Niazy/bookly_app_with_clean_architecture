import 'package:bookly_with_clean_architecture/features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/use_cases/fetch_featured_books_use_case.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksStates> {
  FetchFeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FetchFeaturedBooksInitialState());

  static FetchFeaturedBooksCubit get(context) => BlocProvider.of(context);

  FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  fetchFeaturedBooks() async {
    var result = await fetchFeaturedBooksUseCase.call();
    result.fold(
      (failure) => emit(FetchFeaturedBooksErrorState(failure.errorMessage)),
      (books) => emit(FetchFeaturedBooksSuccessfullyState(books)),
    );
  }
}
