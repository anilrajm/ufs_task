import 'package:flutter/material.dart';
class RecentPlayCard extends StatelessWidget {
  const RecentPlayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 15, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffE3E7EE),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              width: 100,
              height: 80,
              child: Stack(alignment: Alignment.center, children: [
                Image.asset('assets/play_cover.png'),
                Image.asset(
                  'assets/play_ic.png',
                  width: 26,
                  height: 26,
                )
              ])),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OET Beginner special class and Preparation Tips',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '20:45 / 35 :12',
                  style: TextStyle(
                      color: Color(0xff6A7487),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          const Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 6,
                value: 0.36,
                backgroundColor: Color(0xffE3E7EE),
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff2B83D5)),
              ),
              Text(
                '36%',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff283B52)),
              )
            ],
          )
        ],
      ),
    );
  }
}
