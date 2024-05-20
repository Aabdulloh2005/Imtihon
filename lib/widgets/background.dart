import 'package:flutter/material.dart';

class BackgroundCircle extends StatelessWidget {
  const BackgroundCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xffFFFFFF).withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(50),
        width: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xffFFFFFF).withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(50),
          width: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xffFFFFFF).withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(50),
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xffFFFFFF).withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerWidgets extends StatelessWidget {
 final  Widget pasteWidgtes;

  const ContainerWidgets({required this.pasteWidgtes, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      // padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            transform: GradientRotation(12),
            stops: [
              0.4,
              1
            ],
            colors: [
              Color(0xff6B73FF),
              Color(0xff000DFF),
            ]),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const BackgroundCircle(),
          pasteWidgtes,
        ],
      ),
    );
  }
}
