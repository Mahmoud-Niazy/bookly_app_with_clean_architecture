import 'package:bookly_with_clean_architecture/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/function/navigation.dart';
import '../../../../../core/utils/styles.dart';

class SlidingText extends StatefulWidget {
  const SlidingText({
    super.key,
  });

  @override
  State<SlidingText> createState() => _SlidingTextState();
}

class _SlidingTextState extends State<SlidingText>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _textSlidingAnimation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: _textSlidingAnimation.value,
      child: Text(
        'Read Books Free',
        style: TextStylesManager.textStyle14,
      ),
    );
  }

  initAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _textSlidingAnimation = Tween<Offset>(
      begin: const Offset(0, 100),
      end: const Offset(0, 0),
    ).animate(_controller);
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        navigate(
          context: context,
          page: const HomeView(),
        );
      }
    });
  }
}
