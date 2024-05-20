import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:routine_app/account/gender_page.dart';

class GetTypesSignig extends StatelessWidget {
  int? index;
  final String svgName;
  final String title;
  GetTypesSignig(
      {required this.svgName, required this.title, this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      padding: const EdgeInsets.all(13),
      style: IconButton.styleFrom(backgroundColor: Colors.white),
      highlightColor: Colors.grey.shade200,
      onPressed: () {
        index == 2
            ? Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => GenderPage(),
              ))
            : null;
      },
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/svg/$svgName.svg"),
          const Gap(5),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
