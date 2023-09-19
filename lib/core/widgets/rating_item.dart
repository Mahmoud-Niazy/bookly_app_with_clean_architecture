import 'package:flutter/material.dart';
import '../utils/styles.dart';

class RatingItem extends StatelessWidget{
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '4.8',
          style: TextStylesManager.textStyle16,
        ),
        SizedBox(
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