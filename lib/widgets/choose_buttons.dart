import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

class ChooseButtons extends StatelessWidget {
  String icons;
  String title;
  bool isSelected = false;
  ChooseButtons(
      {required this.isSelected,
      required this.icons,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: isSelected ? const Color(0xff3843FF) : Colors.white,
              width: 1.5),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            icons,
            style: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, height: 1),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
