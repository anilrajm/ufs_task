import 'package:flutter/material.dart';

class AssistantTile extends StatelessWidget {
  const AssistantTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 150,
                height: 150,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      child: Image.asset(
                        "assets/spiral_bg.png",
                        width: 130,
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Image.asset(
                          "assets/doodle_dp.png",
                          height: 93,
                          width: 101,
                        ))
                  ],
                )),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Hi, Ajay',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Ask all your career & exams\ndoubts to me',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ));
  }
}
