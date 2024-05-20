import 'package:flutter/material.dart';
import 'package:routine_app/onboarding/main_onboarding.dart';
import 'package:routine_app/widgets/background.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _openNextPage();
  }

  void _openNextPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) {
            return OnboardingPage();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ContainerWidgets(
        pasteWidgtes: Align(
          child: Image.asset(
            "assets/images/routine.png",
            width: width - 120,
          ),
        ),
      ),
    );
  }
}
