import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LearningWidgets extends StatelessWidget {
  final String photo;
  final String text;
  const LearningWidgets({required this.photo, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
              tileMode: TileMode.clamp,
              transform: GradientRotation(20),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff6B73FF), Color(0xff000DFF)])),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/images/$photo.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset("assets/svg/file.svg"),
                const Gap(10),
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
