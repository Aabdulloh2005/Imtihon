import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HabitsWidtget extends StatelessWidget {
  String icon;
  String title;
  String subtitle;
  IconData? add;

  HabitsWidtget(
      {required this.icon,
      required this.title,
      required this.subtitle,
      this.add,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.7),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border(
                    right: BorderSide(
                      color: Color(0xff3843FF),
                      width: 3,
                    ),
                    bottom: BorderSide(
                      color: Color(0xff3843FF),
                      width: 3,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    icon,
                    style: TextStyle(fontSize: 13.sp),
                  ),
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: 11.sp, color: const Color(0xff9B9BA1)),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -30,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15.h,
                      backgroundImage:
                          const AssetImage("assets/images/man.png"),
                    ),
                  ),
                  Positioned(
                    left: -15,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15.h,
                      backgroundImage:
                          const AssetImage("assets/images/woman.png"),
                    ),
                  ),
                  Positioned(
                    child: CircleAvatar(
                      radius: 15.h,
                      child: const Text(
                        "+3",
                        style: TextStyle(
                            color: Color(0xff3843FF),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              add != null
                  ? IconButton(
                      visualDensity: VisualDensity.compact,
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xffEAECF0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        add,
                        size: 20,
                        color: add == Icons.done ? Colors.green : null,
                      ),
                    )
                  : SizedBox(),
            ],
          )
        ],
      ),
    );
  }
}
