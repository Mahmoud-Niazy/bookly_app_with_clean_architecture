import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final double size ;
  final void Function()? onPressed;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.size
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: size,
      ),
      onPressed: onPressed,
    );
  }
}
