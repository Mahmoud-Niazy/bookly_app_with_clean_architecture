import 'package:bookly_with_clean_architecture/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/manager/fetch_searched_books_cubit/fetch_searched_books_cubit.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/custom_form_field_bloc_builder.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/list_of_searched_books_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/use_cases/fetch_searched_books_use_case.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> FetchSearchedBooksCubit(FetchSearchedBooksUseCase(
        GetIt.instance.get<HomeRepoImp>(),
      )),
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CustomFormFieldBlocBuilder(),
                SizedBox(
                  height: 30,
                ),
                ListOfSearchedBooksBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
