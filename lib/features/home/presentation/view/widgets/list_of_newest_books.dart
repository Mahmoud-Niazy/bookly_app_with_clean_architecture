import 'package:flutter/material.dart';
import 'book_item.dart';

class ListOfNewestBooks extends StatelessWidget{
  const ListOfNewestBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index)=>const BookItem(),
        separatorBuilder: (context,index)=> const SizedBox(
          height: 15,
        ),
        itemCount: 10,
      ),
    );
  }
}