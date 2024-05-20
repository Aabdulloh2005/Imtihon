import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routine_app/widgets/challenges.dart';
import 'package:routine_app/widgets/habits.dart';
import 'package:routine_app/widgets/onboard_text.dart';

class SecondOnboard extends StatelessWidget {
  const SecondOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Challenges",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.3.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Challenges(),
              Text(
                "Habits",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.3.sp,
                  fontWeight: FontWeight.w500,
                ),
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
                icon: "🧘‍♀️",
                title: "Meditate",
                subtitle: "30/30 MIN",
                add: Icons.add,
              ),
              const TextWidgets(
                  title1: "Track",
                  title2: "Your Progress",
                  info:
                      "Everyday you become one step closer to your goal. Don’t give up!")
            ],
          )
        ],
      ),
    );
  }
}
