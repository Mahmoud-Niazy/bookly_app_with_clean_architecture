import 'package:bookly_with_clean_architecture/core/utils/styles.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/rating_item.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/book_imge.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../domain/entities/book_entity.dart';

class HomeDetailsViewBody extends StatelessWidget {
  final BookEntity book;

  const HomeDetailsViewBody({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  child: BookImage(
                    image: book.image,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                book.bookName,
                style: TextStylesManager.textStyle30,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                book.autherName,
                style: TextStylesManager.textStyle18
                    .copyWith(color: Colors.grey, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 15,
              ),
              RatingItem(
                rate: book.rate,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                    label: '${book.price}',
                    labelColor: Colors.black,
                  ),
                  CustomButton(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: const Color(0XFFEF8262),
                    label: 'Preview',
                    labelColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
