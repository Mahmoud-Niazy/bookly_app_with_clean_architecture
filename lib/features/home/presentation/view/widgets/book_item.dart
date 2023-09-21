import 'package:bookly_with_clean_architecture/core/function/navigation.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/home_details_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'rating_item.dart';
import 'book_imge.dart';

class BookItem extends StatelessWidget {
  final BookEntity book;

  const BookItem({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigate(context: context, page: HomeDetailsView(
          book: book,
        ));
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            BookImage(
              image: book.image,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.bookName,
                    style: TextStylesManager.textStyle20.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    book.autherName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStylesManager.textStyle14,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${book.price} \$',
                        style: TextStylesManager.textStyle20,
                      ),
                      RatingItem(
                        rate: book.rate,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
