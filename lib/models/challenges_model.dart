class ChallengesModel{

  final String title;
  final String subtitle;
  final int index;
  const ChallengesModel(
      {required this.title,
      required this.subtitle,
      required this.index,
      });
}


List <ChallengesModel> challengList = [
  ChallengesModel(title: "Best Runners! 🏃🏻‍♂️", subtitle: "5 days 13 hours left", index: 1),
  ChallengesModel(title: "Best Bikers! 🚴🏻‍", subtitle: "2 days 11 hours left", index: 2),

];