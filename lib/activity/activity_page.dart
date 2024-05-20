import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routine_app/widgets/activity_widgets.dart';
import 'package:routine_app/widgets/float_buttons.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  int buttonIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF6F9FF),
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: const Text(
            "Activity",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset("assets/svg/users.svg"),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border:
                        Border(bottom: BorderSide(color: Color(0xffEAECF0)))),
                child: Column(
                  children: [
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
                    const ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 4),
                      title: Text("This week"),
                      subtitle: Text("May 28 - Jun 3"),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            GetButtons(icon: Icons.keyboard_arrow_left),
                            GetButtons(icon: Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Column(
                  children: [
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        side: BorderSide(
                          color: Color(0xffEAECF0),
                        ),
                      ),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            leading: Card(
                              elevation: 0,
                              color: Color(0xffF3F4F6),
                              child: Padding(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  "👀",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            title: Text(
                              "All Habits",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              "Summary",
                              style: TextStyle(
                                  color: Color(0xff9B9BA1), fontSize: 12),
                            ),
                            trailing:
                                GetButtons(icon: Icons.keyboard_arrow_down),
                          ),
                          AllHabitsWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const TwoHabits(
                title: "Habits",
                subtitle: "Comparison by week",
                image: "statistic",
                icon: "📈",
                boolean: true,
              ),
              const TwoHabits(
                title: "Happy",
                subtitle: "Avg. Mood",
                image: "stickers",
                icon: "🙂",
                boolean: false,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatButtons());
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
