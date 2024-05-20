import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routine_app/models/challenges_model.dart';
import 'package:routine_app/models/habits_club_model.dart';
import 'package:routine_app/models/learning_model.dart';
import 'package:routine_app/widgets/challenge_widgets.dart';
import 'package:routine_app/widgets/challenges.dart';
import 'package:routine_app/widgets/float_buttons.dart';
import 'package:routine_app/widgets/habits_club.dart';
import 'package:routine_app/widgets/headers.dart';
import 'package:routine_app/widgets/learning.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatButtons(),
      backgroundColor: const Color(0xffF6F9ff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Explore",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/svg/search.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Headers(
                name1: "Suggested for You",
                boolean: true,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 14),
                scrollDirection: Axis.horizontal,
                itemCount: suggested.length,
                itemBuilder: (context, i) {
                  return Habitclubs(
                      icon: suggested[i].icon,
                      title: suggested[i].title,
                      subtitle: suggested[i].subtitle,
                      color: suggested[i].color);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Headers(
                name1: "Habits Club",
                boolean: true,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 14),
                scrollDirection: Axis.horizontal,
                itemCount: clubList.length,
                itemBuilder: (context, i) {
                  return Habitclubs(
                      icon: clubList[i].icon,
                      title: clubList[i].title,
                      subtitle: clubList[i].subtitle,
                      color: clubList[i].color);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Headers(
                name1: "Challenges",
                boolean: true,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                itemCount: challengList.length,
                itemBuilder: (context, index) {
                  return ChallengeWidgets(
                      title: challengList[index].title,
                      subtitle: challengList[index].subtitle,
                      index: challengList[index].index);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Headers(
                name1: "Learning",
                boolean: true,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                itemCount: learningList.length,
                itemBuilder: (context, index) {
                  return LearningWidgets(
                      photo: learningList[index].photo,
                      text: learningList[index].text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
