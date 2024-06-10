import 'package:flutter/material.dart';
import 'package:ufs_task/home_page/models/mock_test_model.dart';
import 'package:ufs_task/home_page/widgets/mock_test_card.dart';
class MockTestList extends StatelessWidget {
  const MockTestList({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth / 1.5,
      child: GridView.builder(
          padding: const EdgeInsets.only(top: 8),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: mockTestModel.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return MockTestCard(
              iconString: mockTestModel[index].iconString,
              title: mockTestModel[index].title,
            );
          }),
    );
  }
}
