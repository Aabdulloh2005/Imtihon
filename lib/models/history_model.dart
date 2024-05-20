class HistoryModel {
  final String title;
  final String subtitle;
  final String iconSvg;
  const HistoryModel({
    required this.title,
    required this.subtitle,
    required this.iconSvg,
  });
}

List<HistoryModel> historyList = [
  const HistoryModel(
      title: "112 points earned!", subtitle: "Today, 12:34 PM", iconSvg: "up"),
  const HistoryModel(
      title: "62 points earned!", subtitle: "Today, 07:12 AM", iconSvg: "up"),
  const HistoryModel(
      title: "Challenge completed!",
      subtitle: "Yesterday, 14:12 PM",
      iconSvg: "medal1"),
  const HistoryModel(
      title: "Weekly winning streak is broken!",
      subtitle: "12 Jun, 16:14 PM",
      iconSvg: "down"),
  const HistoryModel(
      title: "96 points earned!", subtitle: "11 Jun, 17:45 PM", iconSvg: "up"),
  const HistoryModel(
      title: "110 points earned!", subtitle: "10 Jun, 18:32 PM", iconSvg: "up"),
  const HistoryModel(
      title: "110 points earned!", subtitle: "10 Jun, 18:32 PM", iconSvg: "up"),
  const HistoryModel(
      title: "110 points earned!", subtitle: "10 Jun, 18:32 PM", iconSvg: "up"),
  const HistoryModel(
      title: "110 points earned!", subtitle: "10 Jun, 18:32 PM", iconSvg: "up"),
];
