import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  final String image;

  const BookImage({
    super.key,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: AspectRatio(
          aspectRatio: 2 / 3.5,
          child: SizedBox(
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
