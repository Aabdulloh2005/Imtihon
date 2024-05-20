import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routine_app/activity/activity_page.dart';
import 'package:routine_app/explore/explore_page.dart';
import 'package:routine_app/home/create_habit.dart';
import 'package:routine_app/home/homepage.dart';
import 'package:routine_app/profile/profile_page.dart';

class FloatButtons extends StatelessWidget {
  const FloatButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => Homepage(),
                ),
              );
            },
            icon: const Icon(
              Icons.home_filled,
              size: 35,
              color: Color(0xffEAECF0),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => ExplorePage(),
                ),
              );
            },
            icon: CircleAvatar(
              backgroundColor: const Color(0xffEAECF0),
              radius: 15,
              child: SvgPicture.asset(
                "assets/svg/explore.svg",
                height: 12,
                width: 12,
              ),
            ),
          ),
          IconButton.filled(
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xff3843FF),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => CreatingHabit(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => ActivityPage(),
                ),
              );
            },
            icon: SvgPicture.asset("assets/svg/medal.svg"),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => ProfilePage(),
                ),
              );
            },
            icon: SvgPicture.asset("assets/svg/user.svg"),
          ),
        ],
      ),
    );
  }
}
