import 'package:bookly_with_clean_architecture/core/function/navigation.dart';
import 'package:bookly_with_clean_architecture/core/widgets/custom_icon_button.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/home_details_view_body.dart';
import 'package:flutter/material.dart';

class HomeDetailsView extends StatelessWidget {
  final BookEntity book;

  const HomeDetailsView({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          onPressed: () {
            navigatePop(context: context);
          },
          size: 25,
        ),
      ),
      body: HomeDetailsViewBody(
        book: book,
      ),
    );
  }
}
