import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryWidgets extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconSvg;
  const HistoryWidgets(
      {required this.title,
      required this.subtitle,
      required this.iconSvg,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Color(0xffEAECF0))),
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 12, color: Color(0xff9B9BA1)),
        ),
        trailing: SvgPicture.asset("assets/svg/$iconSvg.svg"),
      ),
    );
  }
}
