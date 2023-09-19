import 'package:bookly_with_clean_architecture/core/utils/styles.dart';
import 'package:bookly_with_clean_architecture/core/widgets/rating_item.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/book_imge.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  child: const BookImage(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'The Jungle Book',
                style: TextStylesManager.textStyle30,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Rudyard Kipling',
                style: TextStylesManager.textStyle18
                    .copyWith(color: Colors.grey, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 15,
              ),
              const RatingItem(),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                    label: '19.99 \$',
                    labelColor: Colors.black,
                  ),
                  CustomButton(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Color(0XFFEF8262),
                    label: 'Free Preview',
                    labelColor: Colors.white,
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
