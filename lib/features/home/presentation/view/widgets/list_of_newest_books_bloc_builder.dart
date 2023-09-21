import 'package:bookly_with_clean_architecture/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/manager/fetch_newest_books_cubit/fetch_newest_books_cubit.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/manager/fetch_newest_books_cubit/fetch_newest_books_states.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/list_of_newest_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ListOfNewestBooksBlocBuilder extends StatelessWidget {
  const ListOfNewestBooksBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchNewestBooksCubit(
        FetchNewestBooksUseCase(
          GetIt.instance.get<HomeRepoImp>(),
        ),
      )..fetchNewestBooks(),
      child: BlocBuilder<FetchNewestBooksCubit,FetchNewestBooksStates>(
        builder: (context, state) {
          if(state is FetchNewestBooksSuccessfullyState){
            return ListOfNewestBooks(books: state.books);
          }
          else if(state is FetchNewestBooksErrorState){
            return SizedBox(
              height: MediaQuery.of(context).size.height*.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      state.error
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
