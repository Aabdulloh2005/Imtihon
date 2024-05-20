import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routine_app/models/history_model.dart';
import 'package:routine_app/profile/settings_page.dart';
import 'package:routine_app/widgets/float_buttons.dart';
import 'package:routine_app/widgets/history_widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int buttonIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F9FF),
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: const Text(
          "Your Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                // ignore: prefer_const_constructors
                return SettingsPage();
              }));
            },
            icon: SvgPicture.asset("assets/svg/settings.svg"),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffEAECF0),
                ),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            width: double.infinity,
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset("assets/images/mert.png"),
                  title: const Text(
                    "Mert Kahveci",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  subtitle: Card(
                    margin: const EdgeInsets.only(right: 130),
                    elevation: 0,
                    color: const Color(0xffFFF3DA),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svg/medal.svg",
                            color: const Color(0xffFFCD6D),
                          ),
                          const Text(
                            "1452 Points",
                            style: TextStyle(
                                color: Color(
                                  0xffFEA800,
                                ),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  color: const Color(0xffEAECF0),
                  child: Row(
                    children: [
                      tabButtons(0, "Activity"),
                      tabButtons(1, "Friends"),
                      tabButtons(2, "Achievements"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                    title: const Text(
                      "Showing last month activity",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: SvgPicture.asset("assets/svg/filter.svg"),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: historyList.length,
                      itemBuilder: (context, i) {
                        return HistoryWidgets(
                            title: historyList[i].title,
                            subtitle: historyList[i].subtitle,
                            iconSvg: historyList[i].iconSvg);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatButtons(),
    );
  }

  Widget tabButtons(int index, String name) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            buttonIndex = index;
          });
        },
        child: Card(
          color: buttonIndex == index ? Colors.white : const Color(0xffE8EAEE),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: buttonIndex == index
                        ? const Color(0xff000DFF)
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
