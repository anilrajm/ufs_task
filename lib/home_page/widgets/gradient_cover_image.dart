import 'package:flutter/material.dart';
class GradientCoverImage extends StatelessWidget {
  const GradientCoverImage({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Stack(
        children: [
          Image.asset('assets/Sample1.png'),
        ],
      ),
    );
  }
}
