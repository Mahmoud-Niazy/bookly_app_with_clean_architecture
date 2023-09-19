import 'package:flutter/material.dart';

import '../utils/assets.dart';

class LogoImage extends StatelessWidget {
  final double height;
  final double width;

  const LogoImage({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsManager.logoImage,
      height: height,
      width: width,
    );
  }
}