import 'package:bookly_with_clean_architecture/core/function/navigation.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/home_details_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'rating_item.dart';
import 'book_imge.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigate(context: context, page: const HomeDetailsView());
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            const BookImage(),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harry Potter and the Goblet of Fire',
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
                    'Rudyard Kipling',
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
                        '19.99 \$',
                        style: TextStylesManager.textStyle20,
                      ),
                      const RatingItem(),
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
