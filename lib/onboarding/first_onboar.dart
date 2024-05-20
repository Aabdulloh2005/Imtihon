import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routine_app/widgets/onboard_text.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/first_onboard.png",
                            height: 350.h,
                            width: 350.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 30.sp),
                            child: const Column(
                              children: [
                                TextWidgets(
                                  title1: "Create",
                                  title2: "Good Habits",
                                  info:
                                      "Change your life by slowly adding new healty habits and sticking to them.",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
  }
}