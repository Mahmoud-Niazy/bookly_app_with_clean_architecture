import 'package:bookly_with_clean_architecture/features/home/presentation/manager/fetch_searched_books_cubit/fetch_searched_books_cubit.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/manager/fetch_searched_books_cubit/fetch_searched_books_states.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/list_of_searched_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfSearchedBooksBlocBuilder extends StatelessWidget {
  const ListOfSearchedBooksBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSearchedBooksCubit,FetchSearchedBooksStates>(
      builder: (context, state) {
       if(state is FetchSearchedBooksSuccessfullyState){
         return ListOfSearchedBooks(
           books: state.books,
         );
       }
       else if(state is FetchSearchedBooksErrorState){
         return Center(child: Text(
           state.error
         ));
       }
       return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
