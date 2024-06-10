import 'package:flutter/material.dart';
class CustomAskButton extends StatelessWidget {
  const CustomAskButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 30,
        right: 30,
        child: Container(
          alignment: Alignment.center,
          width: 59,
          height: 28,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xffDEEFFF),
                Color(0xffADC7EF),
                Color(0xff5F9AF3),
              ],
            ),
            borderRadius: BorderRadius.circular(27),
          ),
          child: const Text('Ask'),
        ));
  }
}
