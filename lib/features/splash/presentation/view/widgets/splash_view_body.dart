import 'package:bookly_with_clean_architecture/core/widgets/logo_image.dart';
import 'package:bookly_with_clean_architecture/features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: LogoImage(
          width: MediaQuery.of(context).size.width * .3,
          height: 100,
        )),
        const SlidingText(),
      ],
    );
  }
}
