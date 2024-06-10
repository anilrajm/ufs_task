import 'package:flutter/material.dart';
class BuildNameTile extends StatelessWidget {
  const BuildNameTile({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.06,
      left: 16,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30,
            backgroundImage: AssetImage('assets/sample_dp.png'),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Ajay',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Tuesday, 23 April 2024',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
