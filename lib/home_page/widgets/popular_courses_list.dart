import 'package:flutter/material.dart';

class PopularCoursesList extends StatelessWidget {
  const PopularCoursesList({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xffE3E7EE),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset('assets/popular_course_cover.png'),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'OET Beginner special class and Perparation Tips',
                        style: TextStyle(
                            color: Color(0xff283B52),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/books_ic.png',
                            width: 12,
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            '54',
                            style: TextStyle(
                                color: Color(0xff6A7487),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            'assets/clock_icpng.png',
                            width: 12,
                            height: 12,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            '54',
                            style: TextStyle(
                                color: Color(0xff6A7487),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            'Hrs',
                            style: TextStyle(
                                color: Color(0xff6A7487),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text('₹ 5000',
                                style: TextStyle(
                                    color: Color(0xff283B52),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700)),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFC107),
                              size: 12,
                            ),
                            SizedBox(
                              width: 3.7,
                            ),
                            Text('4.5',
                                style: TextStyle(
                                    color: Color(0xff283B52),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
