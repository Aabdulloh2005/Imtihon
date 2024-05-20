import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:routine_app/widgets/habits.dart';
import 'package:routine_app/widgets/headers.dart';
import 'package:routine_app/widgets/reminders.dart';

class CreatingHabit extends StatefulWidget {
  const CreatingHabit({super.key});

  @override
  State<CreatingHabit> createState() => _CreatingHabitState();
}

class _CreatingHabitState extends State<CreatingHabit> {
  int buttonIndex = 0;
  int buttonIndex1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IconButton(
              padding: const EdgeInsets.all(15),
              style: IconButton.styleFrom(
                backgroundColor: const Color(0xff3843FF),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                color: Color(0xffEAECF0),
              ),
            ),
          ),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          "Create Account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      backgroundColor: const Color(0xffF9F9ff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Headers(
                name1: "NAME",
                boolean: false,
                color: Colors.black,
              ),
              const Gap(10),
              const Text(
                "Walk",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const Divider(),
              const Row(
                children: [
                  Expanded(
                    child: IconAndColor(
                      title: "Walking",
                      subtitle: "Icon",
                      color: Color(0xffF3F4F6),
                      icon: "🏃‍♂️",
                    ),
                  ),
                  Expanded(
                    child: IconAndColor(
                      title: "Orange",
                      subtitle: "Color",
                      color: Color(0xffF15223),
                      icon: "     ",
                    ),
                  ),
                ],
              ),
              const Gap(10),
              const Headers(
                name1: "ICON AND COLOR",
                boolean: false,
                color: Colors.black,
              ),
              const Reminders(
                title: "1 times",
                subtitle: "or more per day",
                buttonSvg: "edit",
                svg1: "refresh",
                often: " Daily",
                svg2: "journal",
              ),
              const Gap(10),
              const Headers(
                name1: "REMINDERS",
                boolean: false,
                color: Colors.black,
              ),
              const Reminders(
                title: "Remember to set off time for a workout today.",
                buttonSvg: "turn_on",
                svg1: "clock",
                often: " 09:30",
                svg2: "bell",
              ),
              IconButton(
                padding: const EdgeInsets.all(10),
                style: IconButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                icon: const Text(
                  "Add Reminder",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Gap(10),
              const Headers(
                name1: "HABIT TYPE",
                boolean: false,
                color: Colors.black,
              ),
              Card(
                color: Color(0xffEAECF0),
                child: Row(
                  children: [
                    tabButtons(0, "Build"),
                    tabButtons(1, "Quit"),
                  ],
                ),
              ),
              Gap(10),
              const Headers(
                name1: "LOCATION",
                boolean: false,
                color: Colors.black,
              ),
              Card(
                color: Color(0xffEAECF0),
                child: Row(
                  children: [
                    tabButtons1(0, "Build"),
                    tabButtons1(1, "Quit"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
            padding: const EdgeInsets.all(5.0),
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

  Widget tabButtons1(int index, String name) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            buttonIndex1 = index;
          });
        },
        child: Card(
          color: buttonIndex1 == index ? Colors.white : const Color(0xffE8EAEE),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: buttonIndex1 == index
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

class IconAndColor extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? icon;
  final Color color;
  const IconAndColor({
    required this.title,
    required this.subtitle,
    required this.color,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        side: BorderSide(color: Color(0xffEAECF0)),
      ),
      elevation: 0,
      child: ListTile(
        leading: Card(
          elevation: 0,
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              icon ?? "",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Color(0xff9B9BA1), fontSize: 12),
        ),
      ),
    );
  }
}
