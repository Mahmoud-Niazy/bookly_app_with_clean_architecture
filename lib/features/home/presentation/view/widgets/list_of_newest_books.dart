import 'package:flutter/material.dart';
import '../../../domain/entities/book_entity.dart';
import 'book_item.dart';

class ListOfNewestBooks extends StatelessWidget {
  final List<BookEntity> books ;

   const ListOfNewestBooks({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => BookItem(
          book: books[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: 10,
      ),
    );
  }
}
