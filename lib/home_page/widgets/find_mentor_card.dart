import 'package:flutter/material.dart';
class FindMentorCard extends StatelessWidget {
  const FindMentorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xffE3E7EE)),
      ),
      child: Stack(children: [
        Image.asset('assets/mentor_cover.png'),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 16, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Find a mentor',
                      style: TextStyle(
                          color: Color(0xff283B52),
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                  const Text('Anywhere, Anytime!',
                      style: TextStyle(
                          color: Color(0xff6A7487),
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 8, bottom: 8),
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff1681E4),
                          Color(0xff0056D6),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Text(
                      'Contact Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
