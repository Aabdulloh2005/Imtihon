import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Reminders extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String buttonSvg;
  final String svg1;
  final String svg2;
  final String often;
  const Reminders(
      {required this.title,
      this.subtitle,
      required this.often,
      required this.buttonSvg,
      required this.svg1,
      required this.svg2,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 6),
              title: Text(
                title,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: subtitle == null ? const Color(0xff9B9BA1) : null),
              ),
              subtitle: Text(
                subtitle ?? "",
                style: TextStyle(color: Color(0xff9B9BA1), fontSize: 12),
              ),
              trailing: IconButton(
                  style: subtitle != null
                      ? IconButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: const BorderSide(color: Color(0xffF3F4F6)))
                      : IconButton.styleFrom(),
                  // visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svg/$buttonSvg.svg")),
            ),
            Card(
              elevation: 0,
              color: Color(0xffF3F4F6),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/svg/$svg1.svg"),
                    Text(
                      often,
                      style: TextStyle(fontSize: 12),
                    ),
                    Gap(15),
                    SvgPicture.asset("assets/svg/$svg2.svg"),
                    const Text(
                      "Every Day",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
