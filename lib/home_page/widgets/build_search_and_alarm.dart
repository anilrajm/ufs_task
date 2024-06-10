import 'package:flutter/material.dart';
class BuildSearchAndAlarm extends StatelessWidget {
  const BuildSearchAndAlarm({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: screenHeight * 0.06,
        right: 16,
        child: Container(
          padding: const EdgeInsets.all(7),
          height: 36,
          decoration: BoxDecoration(
            color: const Color(0xff000000).withOpacity(0.5),
            borderRadius: BorderRadius.circular(27),
          ),
          child: Row(
            children: [
              Image.asset('assets/search_ic.png'),
              const SizedBox(
                width: 20,
              ),
              Image.asset('assets/alarm_ic.png'),
            ],
          ),
        ));
  }
}
