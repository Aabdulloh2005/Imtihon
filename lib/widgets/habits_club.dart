import 'package:flutter/material.dart';

class Habitclubs extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;
  const Habitclubs(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 80, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  icon,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Color(0xff686873), fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
