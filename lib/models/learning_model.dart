class LearningModel {
  final String photo;
  final String text;
  const LearningModel({
    required this.photo,
    required this.text,
  });
}

List<LearningModel> learningList = [
  const LearningModel(
    photo: "water",
    text: "Why should we drink water often?",
  ),
  const LearningModel(photo: "moving", text: "Benefits of regular walking"),
];
