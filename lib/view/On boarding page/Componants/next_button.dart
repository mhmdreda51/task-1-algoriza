import 'package:flutter/material.dart';
import 'package:task_1_algoriza/widgets/app_button.dart';

import '../../../constants/colors.dart';
import '../Controller/on_boarding_cubit.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.cubit}) : super(key: key);
  final OnBoardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: AppButton(
        color: mainButton,
        text: "Get Started",
        height: 50,
        width: double.infinity,
        fontWeight: FontWeight.bold,
        borderRadius: 10,
        textColor: Colors.white,
        onTap: () {
          if (cubit.isLast) {
            cubit.submit();
          } else {
            cubit.pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.decelerate);
          }
        },
      ),
    );
  }
}
