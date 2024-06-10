class MockTestModel {
  final String title;
  final String iconString;

  MockTestModel({required this.title, required this.iconString});
}

List<MockTestModel> mockTestModel = [
  MockTestModel(title: 'Reading', iconString: "assets/reading_ic.png"),
  MockTestModel(title: 'Listening', iconString: "assets/head_phone_ic.png"),
  MockTestModel(title: 'Writing', iconString: "assets/pen_ic.png"),
  MockTestModel(title: 'Speaking', iconString: "assets/speaking_ic.png"),
]
;