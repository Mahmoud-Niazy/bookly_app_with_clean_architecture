import 'package:bookly_with_clean_architecture/core/utils/styles.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/list_of_featured_books.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/list_of_newest_books.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const ListOfFeaturedBooks(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Newest Books',
              style: TextStylesManager.textStyle18.copyWith(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const ListOfNewestBooks(),
        ],
      ),
    );
  }
}
