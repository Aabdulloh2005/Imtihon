import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:routine_app/activity/activity_page.dart';
import 'package:routine_app/explore/explore_page.dart';
import 'package:routine_app/home/best_runners.dart';
import 'package:routine_app/home/create_habit.dart';
import 'package:routine_app/profile/profile_page.dart';
import 'package:routine_app/widgets/calendar_button.dart';
import 'package:routine_app/widgets/challenges.dart';
import 'package:routine_app/widgets/float_buttons.dart';
import 'package:routine_app/widgets/habits.dart';
import 'package:routine_app/widgets/headers.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int buttonIndex = 0;
  int selectedIndex = 1;

  void selectedDay(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget tabButtons(int index, String name) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            buttonIndex = index;
          });
        },
        child: Card(
          color: buttonIndex == index ? Colors.white : const Color(0xffE8EAEE),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: buttonIndex == index
                          ? const Color(0xff000DFF)
                          : Colors.black),
                ),
                const Gap(5),
                index == 1
                    ? const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10,
                        child: Text(
                          "2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Color(0xff000DFF),
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatButtons(),
      backgroundColor: const Color(0xfff6f9ff),
      appBar: AppBar(
        leadingWidth: 80,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SvgPicture.asset(
            "assets/svg/calendar.svg",
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset("assets/svg/ring.svg"),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffEAECF0),
                ),
              ),
            ),
            child: Column(
              children: [
                const ListTile(
                  title: Text(
                    "Hi, Mert 👋🏻",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  subtitle: Text(
                    "Let’s make habits together!",
                    style: TextStyle(color: Color(0xff9B9BA1)),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: Color(0xffDDF2FC),
                    child: Text("😇"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Card(
                    elevation: 0,
                    color: const Color(0xffE8EAEE),
                    child: Row(
                      children: [
                        tabButtons(0, "Today"),
                        tabButtons(1, "Clubs"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 80,
            child: ListView.builder(
              itemCount: 14,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    selectedDay(index);
                  },
                  child: CalendarButton(
                    index: index + 1,
                    isSelected: index == selectedIndex,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Headers(
                      name1: "Challenges",
                      boolean: true,
                      color: Colors.black,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) {
                              return BestRunners();
                            }),
                          );
                        },
                        child: const Challenges()),
                    const Headers(
                      name1: "Habits",
                      boolean: true,
                      color: Colors.black,
                    ),
                    HabitsWidtget(
                      icon: "💧",
                      title: "Drink the water",
                      subtitle: "500/2000 ML",
                      add: Icons.add,
                    ),
                    HabitsWidtget(
                      icon: "🏃‍♂️",
                      title: "Walk",
                      subtitle: "0/10000 STEPS",
                      add: Icons.add,
                    ),
                    HabitsWidtget(
                      icon: "🌿",
                      title: "Water Plants",
                      subtitle: "0/1 TIMES",
                      add: Icons.add,
                    ),
                    HabitsWidtget(
                      icon: "🧘‍♀️",
                      title: "Meditate",
                      subtitle: "30/30 MIN",
                      add: Icons.done,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
