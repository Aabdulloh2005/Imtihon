import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routine_app/models/settings_model.dart';
import 'package:routine_app/widgets/general_settings.dart';
import 'package:routine_app/widgets/headers.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(
                  color: Color(0xffEAECF0),
                ),
              ),
            ),
          ),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      backgroundColor: const Color(0xffF6F9FF),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Headers(
              name1: "General",
              boolean: false,
              color: Color(0xff9B9BA1),
            ),
            Expanded(
              flex: 7,
              child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Color(0xffEAECF0),
                  ),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: settingsList.length,
                  itemBuilder: (context, i) {
                    return GeneralSettings(
                      index: i,
                      iconSvg: settingsList[i].iconSvg,
                      title: settingsList[i].title,
                      icon: settingsList[i].icon,
                    );
                  },
                ),
              ),
            ),
            const Headers(
              name1: "About us",
              boolean: false,
              color: Color(0xff9B9BA1),
            ),
            Expanded(
              flex: 5,
              child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Color(0xffEAECF0),
                  ),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: aboutList.length,
                  itemBuilder: (context, i) {
                    return GeneralSettings(
                      index: i,
                      iconSvg: aboutList[i].iconSvg,
                      title: aboutList[i].title,
                      icon: null,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
