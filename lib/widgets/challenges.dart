import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.clock,
                      color: const Color(0xff3843FF),
                      size: 21.5.sp,
                    ),
                    Gap(10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Best Runners! 🏃🏻‍",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "5 days 13 hours left",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0xff9B9BA1),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: -12,
                          child: CircleAvatar(
                            radius: 8.h,
                            backgroundImage:
                                const AssetImage("assets/images/man.png"),
                          ),
                        ),
                        Positioned(
                          child: CircleAvatar(
                            radius: 8.h,
                            backgroundImage:
                                const AssetImage("assets/images/woman.png"),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "2 friends joined",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: const Color(0xff9B9BA1),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 3.20.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Color(0xffEAECF0)),
              width: double.infinity,
              child: Divider(
                thickness: 3.20.h,
                endIndent: 300,
                color: const Color(0xff3843FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
