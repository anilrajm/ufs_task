import 'package:flutter/material.dart';

class MockTestCard extends StatelessWidget {
  const MockTestCard({
    super.key,
    required this.iconString,
    required this.title,
  });

  final String iconString;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffE3E7EE),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(0xffE3E7EE),
              borderRadius: BorderRadius.circular(11),
            ),
            child: SizedBox(
              height: 12,
              width: 12,
              child: Image.asset(
                iconString,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Color(0xff283B52),
                fontSize: 12,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
