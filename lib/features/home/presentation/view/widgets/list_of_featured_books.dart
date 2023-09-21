import 'package:flutter/material.dart';
import '../../../domain/entities/book_entity.dart';
import 'book_imge.dart';

class ListOfFeaturedBooks extends StatelessWidget {
   final List<BookEntity> books ;

   const ListOfFeaturedBooks({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => BookImage(
            image: books[index].image,
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 0),
          itemCount: books.length,
        ),
      ),
    );
  }
}
