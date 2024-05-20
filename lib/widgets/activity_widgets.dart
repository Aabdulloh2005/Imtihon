import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TwoHabits extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final String image;
  final bool boolean;
  const TwoHabits(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.boolean,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: Column(
        children: [
          Card(
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              side: BorderSide(
                color: Color(0xffEAECF0),
              ),
            ),
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                  leading: Card(
                    elevation: 0,
                    color: Color(0xffF3F4F6),
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        icon,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  title: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: TextStyle(color: Color(0xff9B9BA1), fontSize: 12),
                  ),
                  trailing: boolean
                      ? const Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            side: BorderSide(
                              color: Color(0xffEAECF0),
                            ),
                          ),
                          elevation: 0,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text(
                                  "🔥 Burn!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Text(
                                  "32 habits",
                                  style: TextStyle(
                                      color: Color(0xff9B9BA1), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  child: Image.asset("assets/images/$image.png"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AllHabitsWidget extends StatelessWidget {
  const AllHabitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Statistics(
                  title: "SUCCESS RATE",
                  subtitle: "%98",
                  color: Color(0xff3BA935),
                ),
              ),
              Expanded(
                child: Statistics(
                  title: "COMPLETED",
                  subtitle: "244",
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "POINTS EARNED",
                      style: TextStyle(
                          color: Color(0xff9B9BA1),
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                    Card(
                      color: const Color(0xffFFF3DA),
                      elevation: 0,
                      child: SizedBox(
                        width: 60,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/svg/medal2.svg",
                            ),
                            const Text(
                              "322",
                              style: TextStyle(
                                  color: Color(0xffFEA800),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Statistics(
                  title: "BEST STREAK DAY",
                  subtitle: "22",
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Statistics(
                  title: "SKIPPED",
                  subtitle: "4",
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Statistics(
                  title: "FAILED",
                  subtitle: "2",
                  color: Color(0xffE3524F),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Statistics extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  const Statistics(
      {required this.title,
      required this.subtitle,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Color(0xff9B9BA1),
              fontWeight: FontWeight.bold,
              fontSize: 11),
        ),
        Text(
          " $subtitle",
          style: TextStyle(
              color: color, fontSize: 18, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

class GetButtons extends StatelessWidget {
  final IconData icon;
  const GetButtons({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xffEAECF0),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon),
        ),
      ),
    );
  }
}
