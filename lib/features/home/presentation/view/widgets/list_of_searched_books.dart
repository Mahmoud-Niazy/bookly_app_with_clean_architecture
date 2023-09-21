import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'book_item.dart';

class ListOfSearchedBooks extends StatelessWidget {
  final List<BookEntity> books;

  const ListOfSearchedBooks({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => BookItem(book: books[index]),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: books.length,
    );
  }
}
