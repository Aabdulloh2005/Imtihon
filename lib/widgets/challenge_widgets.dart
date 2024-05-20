import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ChallengeWidgets extends StatelessWidget {
  final String title;
  final String subtitle;
  final int index;
  const ChallengeWidgets(
      {required this.title,
      required this.subtitle,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              tileMode: TileMode.clamp,
              transform: GradientRotation(20),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff6B73FF), Color(0xff000DFF)])),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(0),
                child: SvgPicture.asset(
                  "assets/svg/clock.svg",
                  height: 30,
                  width: 30,
                )),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.white),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              height: 3.20,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Color.fromARGB(166, 234, 236, 240)),
              child: const Divider(
                thickness: 3.20,
                endIndent: 100,
                color: Color(0xffFFFFFF),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      index != 1
                          ? const Positioned(
                              left: -12,
                              child: CircleAvatar(
                                radius: 8,
                                backgroundImage:
                                    AssetImage("assets/images/man.png"),
                              ),
                            )
                          : const SizedBox(),
                      const Positioned(
                        child: CircleAvatar(
                          radius: 8,
                          backgroundImage:
                              AssetImage("assets/images/woman.png"),
                        ),
                      )
                    ],
                  ),
                  const Gap(10),
                  Text(
                    "$index friends joined",
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
