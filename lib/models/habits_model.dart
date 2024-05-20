class HabitsModel {
  String icon;
  String title;

  HabitsModel({required this.icon, required this.title});
}

List<HabitsModel> gender = [
  HabitsModel(icon: "🤷", title: "Male"),
  HabitsModel(icon: "🤷‍♀️", title: "Female")
];

List<HabitsModel> habits = [
  HabitsModel(icon: "💧", title: "Drink water"),
  HabitsModel(icon: "🏃‍♂️", title: "Run"),
  HabitsModel(icon: "📖", title: "Read book"),
  HabitsModel(icon: "🧘‍♀️", title: "Meditate"),
  HabitsModel(icon: "👨‍💻", title: "Study"),
  HabitsModel(icon: "📒", title: "Journal"),
  HabitsModel(icon: "🌿", title: "Watr plant"),
  HabitsModel(icon: "😴", title: "Sleep"),
];
