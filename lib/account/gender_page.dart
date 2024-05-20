import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:routine_app/home/homepage.dart';
import 'package:routine_app/models/habits_model.dart';
import 'package:routine_app/widgets/choose_buttons.dart';
import 'package:routine_app/widgets/headers.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  int currentPageIndex = 1;
  int selectedIndex = -1;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final dateController = TextEditingController();

  String? nameError;
  String? surnameError;
  String? dateError;
  String? emailError;
  String? passwordError;
  bool checkEmail = false;
  bool checkPassword = false;
  bool checkName = false;
  bool checkSurname = false;
  bool checkDate = false;

  void giveColor(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void nextPage() {
    setState(() {
      if (checkEmail && checkPassword) {
        currentPageIndex = 2;
        checkEmail = false;
      } else if (checkName && checkSurname && checkDate) {
        currentPageIndex++;
      }
      if (currentPageIndex == 5) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) {
            return const Homepage();
          }),
        );
      }
    });
  }

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty) {
      emailError = "Email kiriting";
    } else if (!email.contains("@")) {
      emailError = "Email xato, boshqatdan kiriting";
    } else {
      emailError = null;
      checkEmail = true;
    }

    if (password.isEmpty) {
      passwordError = 'Parol kiriting!';
    } else if (password.length < 8) {
      passwordError = 'Not enough characters!';
    } else {
      passwordError = null;
      checkPassword = true;
    }

    setState(() {});
  }

  void userInfo() {
    String name = nameController.text.trim();
    String surname = surnameController.text.trim();
    String date = dateController.text.trim();
    if (name.isEmpty || name.length < 2) {
      nameError = "Enter name";
    } else {
      nameError = null;
      checkName = true;
    }

    if (surname.isEmpty) {
      surnameError = 'Enter surname';
    } else {
      surnameError = null;
      checkSurname = true;
    }
    if (date.isEmpty || date.length < 10 || date[2] != "/" || date[5] != "/") {
      dateError = 'Enter birthday correct';
    } else {
      dateError = null;
      checkDate = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          currentPageIndex == 1
              ? Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: const ZoomTapAnimation(
                    child: Text(
                      "Don’t have an account? Let’s create!",
                      style: TextStyle(
                          color: Color(0xff3843FF),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              : const SizedBox(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: IconButton.filled(
              padding: const EdgeInsets.all(15),
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0xff3843FF)),
              onPressed: nextPage,
              icon: const Text(
                "Next",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xfff6f9ff),
      appBar: AppBar(
        shape: const BeveledRectangleBorder(
          side: BorderSide(color: Color(0xffEAECF0)),
        ),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            currentPageIndex == 1 ? currentPageIndex = 1 : currentPageIndex--;
            setState(() {});
          },
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(color: Color(0xffEAECF0)),
            ),
          ),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          currentPageIndex == 1 ? "Continue with E-mail" : "Create Account",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (currentPageIndex == 1) continueEmail(),
            if (currentPageIndex == 2) createAccount(),
            if (currentPageIndex == 3) genderslide(),
            if (currentPageIndex == 4) choosingHabits(),
          ],
        ),
      ),
    );
  }

  Widget createAccount() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Headers(name1: "Name:", boolean: false, color: Colors.black),
          const Gap(5),
          TextFormField(
            controller: nameController,
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              userInfo();
            },
            decoration: InputDecoration(
              errorText: nameError,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffCDCDD0)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff3BA935), width: 2),
              ),
              hintText: "Enter your name",
              suffixIcon: ZoomTapAnimation(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffCDCDD0),
                    radius: 5,
                    child: SvgPicture.asset("assets/svg/cancel.svg"),
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          const Headers(name1: "Surname", boolean: false, color: Colors.black),
          const Gap(5),
          TextField(
            controller: surnameController,
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              userInfo();
            },
            decoration: InputDecoration(
              errorText: surnameError,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffCDCDD0)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff3BA935), width: 2),
              ),
              hintText: "Enter your surname",
              suffixIcon: ZoomTapAnimation(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffCDCDD0),
                    radius: 5,
                    child: SvgPicture.asset("assets/svg/cancel.svg"),
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          const ZoomTapAnimation(
            child: Headers(
                name1: "Birthdate", boolean: false, color: Colors.black),
          ),
          const Gap(5),
          TextField(
            controller: dateController,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.datetime,
            onChanged: (value) {
              userInfo();
            },
            decoration: InputDecoration(
              errorText: dateError,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffCDCDD0)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff3BA935), width: 2),
              ),
              hintText: "mm/dd/yyyy",
              suffixIcon: ZoomTapAnimation(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffCDCDD0),
                    radius: 5,
                    child: SvgPicture.asset("assets/svg/cancel.svg"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget continueEmail() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Headers(name1: "E-mail", boolean: false, color: Colors.black),
          const Gap(5),
          TextField(
            controller: emailController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              login();
            },
            decoration: InputDecoration(
              errorText: emailError,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffCDCDD0)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff3BA935), width: 2),
              ),
              hintText: "Enter E-mail:",
              suffixIcon: ZoomTapAnimation(
                onTap: () {
                  emailController.clear();
                  setState(() {});
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffCDCDD0),
                    radius: 5,
                    child: SvgPicture.asset("assets/svg/cancel.svg"),
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          const Headers(name1: "Password", boolean: false, color: Colors.black),
          const Gap(5),
          TextFormField(
            onChanged: (value) {
              login();
            },
            controller: passwordController,
            decoration: InputDecoration(
              errorText: passwordError,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffCDCDD0)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff3BA935), width: 2),
              ),
              hintText: "Enter your password",
              suffixIcon: ZoomTapAnimation(
                onTap: () {
                  passwordController.clear();
                  setState(() {});
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 15, right: 15),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffCDCDD0),
                    radius: 5,
                    child: SvgPicture.asset("assets/svg/cancel.svg"),
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          const ZoomTapAnimation(
            child: Headers(
                name1: "I forgot my password",
                boolean: false,
                color: Color(0xff686873)),
          ),
        ],
      ),
    );
  }

  Widget genderslide() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Choose your gender",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemCount: gender.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    giveColor(index);
                  },
                  child: ChooseButtons(
                    isSelected: index == selectedIndex,
                    icons: gender[index].icon,
                    title: gender[index].title,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget choosingHabits() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Choose your first habits",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          const Text(
            "You may add more habits later",
            style: TextStyle(fontSize: 14, color: Color(0xff686873)),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
              itemCount: habits.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    giveColor(index);
                  },
                  child: ChooseButtons(
                    isSelected: index == selectedIndex,
                    icons: habits[index].icon,
                    title: habits[index].title,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
