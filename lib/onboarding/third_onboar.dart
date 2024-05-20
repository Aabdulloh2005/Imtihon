import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routine_app/widgets/onboard_text.dart';

class ThirdOnboard extends StatelessWidget {
  const ThirdOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/third.png",
            height: 360,
          ),
          const Column(
            children: [
              TextWidgets(
                  title1: "Stay Together",
                  title2: "and Strong",
                  info:
                      "Find friends to discuss common topics. Complete challenges together.")
            ],
          ),
        ],
      ),
    );
  }
}
