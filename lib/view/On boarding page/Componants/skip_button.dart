import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../widgets/app_button.dart';
import '../Controller/on_boarding_cubit.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key, required this.cubit}) : super(key: key);
  final OnBoardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Align(
        alignment: Alignment.topRight,
        child: AppButton(
          text: "Skip",
          color: skipButton,
          onTap: cubit.submit,
          width: 75,
        ),
      ),
    );
  }
}
