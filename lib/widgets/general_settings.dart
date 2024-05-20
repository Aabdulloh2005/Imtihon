import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routine_app/models/settings_model.dart';

class GeneralSettings extends StatefulWidget {
  final String iconSvg;
  final String title;
  final bool? icon;
  int index;
  GeneralSettings(
      {required this.iconSvg,
      required this.title,
      required this.icon,
      required this.index,
      super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          leading: SvgPicture.asset("assets/svg/${widget.iconSvg}.svg"),
          title: Text(
            widget.title,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: Colors.black),
          ),
          trailing: InkWell(
              radius: 20,
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: widget.icon == null
                  ? const Icon(Icons.keyboard_arrow_right,
                      color: Color(0xff686873), size: 30)
                  : Switch(
                      inactiveTrackColor: Color(0xffEAECF0),
                      activeTrackColor: const Color(0xff3BA935),
                      thumbColor:
                          const WidgetStatePropertyAll(Color(0xffFFFFFF)),
                      value: light,
                      onChanged: (bool value) {
                        setState(() {
                          light = value;
                        });
                      },
                    ),),
        ),
        widget.index + 1 != settingsList.length
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Color(0xffEAECF0),
                ),
              )
            : const SizedBox(
                height: 10,
              ),
      ],
    );
  }
}
