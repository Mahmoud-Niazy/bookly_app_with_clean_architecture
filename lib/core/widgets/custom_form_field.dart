import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;


  const CustomFormField({
    super.key,
    required this.label,
    required this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              right: 10
            ),
            child: Icon(
              Icons.search,
              size: 20,
            ),
          ),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: label,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
