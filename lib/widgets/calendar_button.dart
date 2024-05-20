import 'package:flutter/material.dart';

class CalendarButton extends StatelessWidget {
  final int index;
  bool isSelected = false;
  List weeks = [
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI",
    "SAT",
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI",
    "SAT",
  ];
  CalendarButton({required this.index, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: !isSelected ? Colors.white : const Color(0xff3843FF),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$index",
              style: TextStyle(
                  color: !isSelected ? Colors.black : const Color(0xff3843FF),
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            Text(
              weeks[index - 1],
              style: TextStyle(
                  color:
                      !isSelected ? Color(0xffCDCDD0) : const Color(0xff3843FF),
                  fontWeight: FontWeight.w700,
                  fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
