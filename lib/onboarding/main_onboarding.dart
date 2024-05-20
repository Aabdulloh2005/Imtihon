import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:routine_app/onboarding/first_onboar.dart';
import 'package:routine_app/onboarding/second_onboar.dart';
import 'package:routine_app/onboarding/third_onboar.dart';
import 'package:routine_app/widgets/background.dart';

import 'package:routine_app/widgets/type_of_signing.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWidgets(
        pasteWidgtes: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: PageView(
                  controller: _controller,
                  onPageChanged: (int index) {
                    _pageIndex = index;
                    setState(() {});
                  },
                  children: const [
                    SingleChildScrollView(child: FirstOnboarding()),
                    SingleChildScrollView(child: SecondOnboard()),
                    SingleChildScrollView(child: ThirdOnboard()),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            const Gap(5),
                            Wrap(
                              spacing: 16.sp,
                              children: [
                                Container(
                                  width: 8.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _pageIndex == 0
                                          ? Colors.white
                                          : const Color(0xff888EFF)),
                                ),
                                Container(
                                  width: 8.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _pageIndex == 1
                                          ? Colors.white
                                          : const Color(0xff888EFF)),
                                ),
                                Container(
                                  width: 8.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _pageIndex == 2
                                          ? Colors.white
                                          : const Color(0xff888EFF)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GetTypesSignig(
                        svgName: "enter",
                        title: "Continue with E-mail",
                        index: _pageIndex,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GetTypesSignig(svgName: "apple", title: "Apple"),
                          GetTypesSignig(svgName: "google", title: "Google"),
                          GetTypesSignig(
                              svgName: "facebook", title: "Facebook"),
                        ],
                      ),
                      Text(
                        "By continuing you agree Terms of Services & Privacy Policy ",
                        style: TextStyle(
                            color: const Color(0xffAFB4FF), fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
