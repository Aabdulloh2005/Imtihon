import 'package:flutter/material.dart';

class HabitsClubModel {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;
  const HabitsClubModel({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });
}

List<HabitsClubModel> suggested = [
  const HabitsClubModel(
    icon: "🚶‍♀️",
    title: "Walk",
    subtitle: "10 km",
    color: Color(0xffFCDCD3),
  ),
  const HabitsClubModel(
    icon: "🏊🏻‍♂️♂",
    title: "Swim",
    subtitle: "30 min",
    color: Color(0xffD7D9FF),
  ),
  const HabitsClubModel(
    icon: "📕",
    title: "Read",
    subtitle: "20 min",
    color: Color(0xffD5ECE0),
  ),
];
List<HabitsClubModel> clubList = [
  const HabitsClubModel(
    icon: "😻",
    title: "Cat Lovers",
    subtitle: "462 members",
    color: Color(0xffFFFFFF),
  ),
  const HabitsClubModel(
    icon: "🌃",
    title: "Istanbul",
    subtitle: "+500 members",
    color: Color(0xffFFFFFF),
  ),
  const HabitsClubModel(
    icon: "🏃🏻‍♂️♂",
    title: "Runners",
    subtitle: "336 members",
    color: Color(0xffFFFFFF),
  ),
];
