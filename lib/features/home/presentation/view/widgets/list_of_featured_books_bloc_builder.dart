import 'package:bookly_with_clean_architecture/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_states.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/list_of_featured_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ListOfFeaturedBooksBlocBuilder extends StatelessWidget {
  const ListOfFeaturedBooksBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchFeaturedBooksCubit(
        FetchFeaturedBooksUseCase(
          GetIt.instance.get<HomeRepoImp>(),
        ),
      )..fetchFeaturedBooks(),
      child: BlocBuilder<FetchFeaturedBooksCubit,FetchFeaturedBooksStates>(
        builder: (context, state) {
          if(state is FetchFeaturedBooksSuccessfullyState){
            return  ListOfFeaturedBooks(books:state.books);
          }
          else if(state is FetchFeaturedBooksErrorState){
            return Center(child: Text(state.error));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );

        },
      ),
    );
  }
}
