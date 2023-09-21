import 'package:bookly_with_clean_architecture/core/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../../../../../core/function/navigation.dart';
import '../../../../../core/widgets/logo_image.dart';
import '../search_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoImage(
            height: 100,
            width: 75,
          ),
          CustomIconButton(
            icon: Icons.search,
            onPressed: () {
              navigate(
                context: context,
                page: const SearchView(),
              );
            },
            size: 25,
          ),
        ],
      ),
    );
  }
}
