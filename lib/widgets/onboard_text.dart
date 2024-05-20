import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidgets extends StatelessWidget {
  final String title1;
  final String title2;
  final String info;
  const TextWidgets(
      {required this.title1,
      required this.title2,
      required this.info,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff)),
        ),
        Text(
          title2,
          style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff)),
        ),
        Text(
          info,
          style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xffD7D9FF),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
