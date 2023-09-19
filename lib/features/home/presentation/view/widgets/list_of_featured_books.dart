import 'package:flutter/material.dart';
import 'book_imge.dart';

class ListOfFeaturedBooks extends StatelessWidget{
  const ListOfFeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15,
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const BookImage(),
          separatorBuilder: (context,index)=> const SizedBox(width: 0),
          itemCount: 15,
        ),
      ),
    );
  }
}