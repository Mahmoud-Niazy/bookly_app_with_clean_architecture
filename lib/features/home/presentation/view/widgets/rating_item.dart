import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class RatingItem extends StatelessWidget{
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '4.8',
          style: TextStylesManager.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2200)',
          style: TextStylesManager.textStyle14,
        ),
      ],
    );
  }
}