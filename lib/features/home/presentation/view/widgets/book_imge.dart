import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class BookImage extends StatelessWidget{
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: AspectRatio(
          aspectRatio: 2/3.5,
          child: SizedBox(
            child: Image.asset(
              AssetsManager.uiTestImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}