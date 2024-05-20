import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:routine_app/home/create_habit.dart';
import 'package:routine_app/widgets/background.dart';
import 'package:routine_app/widgets/challenges.dart';
import 'package:routine_app/widgets/habits.dart';
import 'package:routine_app/widgets/headers.dart';

class BestRunners extends StatelessWidget {
  const BestRunners({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWidgets(
        pasteWidgtes: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {Navigator.of(context).pop();},
                    icon: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                      ),
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return CreatingHabit();}),);
                    },
                    icon: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    const Text(
                      "🏃‍♂️",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 50),
                    ),
                    const Text(
                      "Best Runners!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      "May 28 to 4 June",
                      style: TextStyle(fontSize: 14, color: Color(0xffEBECFF)),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -40,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage("assets/images/man.png"),
                                ),
                              ),
                              Positioned(
                                left: -20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage("assets/images/woman.png"),
                                ),
                              ),
                              Positioned(
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage("assets/images/man2.png"),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage("assets/images/man3.png"),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: CircleAvatar(
                                  radius: 15,
                                  child: Text(
                                    "+9",
                                    style: TextStyle(
                                        color: Color(0xff3843FF),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu. Duis aute irure dolor in reprehenderit in voluptate velit esse\n cillum dolore eu fugiat nulla pariatu.",
                      style: TextStyle(fontSize: 14, color: Color(0xffEBECFF)),
                    ),
                  ],
                ),
              ),
              IconButton.filled(
                padding: const EdgeInsets.all(15),
                style: IconButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                icon: const Text(
                  "Join the Challenge",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const Gap(15),
              Headers(name1: "Tasks", boolean: false),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HabitsWidtget(
                        icon: "💧",
                        title: "Drink the water",
                        subtitle: "500/2000 ML",
                      ),
                      HabitsWidtget(
                        icon: "🏃‍♂️",
                        title: "Walk",
                        subtitle: "0/10000 STEPS",
                      ),
                      HabitsWidtget(
                        icon: "🌿",
                        title: "Water Plants",
                        subtitle: "0/1 TIMES",
                      ),
                      HabitsWidtget(
                        icon: "🧘‍♀️",
                        title: "Meditate",
                        subtitle: "30/30 MIN",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
