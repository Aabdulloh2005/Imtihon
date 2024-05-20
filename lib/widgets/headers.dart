import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  final String name1;
  final bool boolean;
  final Color? color;

  const Headers(
      {required this.name1, required this.boolean, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name1,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: color != null ? color : Colors.white),
        ),
        boolean
            ? const Text(
                "VIEW ALL",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3843FF),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
