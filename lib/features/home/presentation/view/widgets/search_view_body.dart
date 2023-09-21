import 'package:bookly_with_clean_architecture/core/widgets/custom_form_field.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              CustomFormField(
                label: 'Search for any book',
                onChanged: (value){},
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => BookItem(
                  book: BookEntity(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1h2pAUOWYd6qG9yTPtC26ZOaQaXzpWjBwmKaZn2A&s',
                    price: 'Free',
                    bookName: 'Programming Mobile Apps',
                    autherName: 'Mahmoud Elsolia',
                    rate: 4.0,
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
