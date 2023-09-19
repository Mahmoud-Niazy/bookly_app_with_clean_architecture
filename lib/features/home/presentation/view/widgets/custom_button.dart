import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final BorderRadius borderRadius;
  final String label;
  final Color labelColor;
  final void Function()? onPressed;

   const CustomButton({
    super.key,
    required this.borderRadius,
    required this.color,
    required this.label,
    required this.labelColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: 150,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStylesManager.textStyle18.copyWith(
            color: labelColor,
          ),
        ),
      ),
    );
  }
}
