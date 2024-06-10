import 'package:flutter/material.dart';
import 'package:ufs_task/home_page/widgets/build_name_tile.dart';
import 'package:ufs_task/home_page/widgets/custom_ask_button.dart';
import 'package:ufs_task/home_page/widgets/explore_couse_button.dart';
import 'package:ufs_task/home_page/widgets/find_mentor_card.dart';
import 'package:ufs_task/home_page/widgets/gradient_cover_image.dart';
import 'package:ufs_task/home_page/widgets/mock_test_list.dart';
import 'package:ufs_task/home_page/widgets/popular_courses_list.dart';
import 'package:ufs_task/home_page/widgets/recent_play_card.dart';
import '../widgets/assistant_card.dart';
import '../widgets/build_search_and_alarm.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF4F7FA),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                width: screenWidth,
                height: screenHeight * 0.3,
                child: Stack(children: [
                  GradientCoverImage(screenHeight: screenHeight),
                  BuildNameTile(screenHeight: screenHeight),
                  BuildSearchAndAlarm(screenHeight: screenHeight),
                  const AssistantTile(),
                  const CustomAskButton()
                ])),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recently Played',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const RecentPlayCard(),
                    const SizedBox(
                      height: 16,
                    ),
                    const ExploreCourseButton(),
                    const SizedBox(
                      height: 16,
                    ),
                    const FindMentorCard(),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Mock Test',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    MockTestList(screenWidth: screenWidth),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Popular Courses',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    PopularCoursesList(screenHeight: screenHeight),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
