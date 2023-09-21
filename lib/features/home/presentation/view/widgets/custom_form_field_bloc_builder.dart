import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_form_field.dart';
import '../../manager/fetch_searched_books_cubit/fetch_searched_books_cubit.dart';
import '../../manager/fetch_searched_books_cubit/fetch_searched_books_states.dart';

class CustomFormFieldBlocBuilder extends StatelessWidget{
  const CustomFormFieldBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSearchedBooksCubit,FetchSearchedBooksStates>(
      builder:(context,state)=> CustomFormField(
        label: 'Search for any book',
        onChanged: (value){
          var cubit = BlocProvider.of<FetchSearchedBooksCubit>(context);
          cubit.fetchSearchedBooks(search: value.toString());
        },
      ),
    );
  }
}