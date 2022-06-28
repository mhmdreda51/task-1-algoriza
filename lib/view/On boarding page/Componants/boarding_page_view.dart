import 'package:flutter/material.dart';

import '../Controller/on_boarding_cubit.dart';
import '../Model/boarding_model.dart';
import 'BuildBoardingItem.dart';

class BoardingPageView extends StatelessWidget {
  const BoardingPageView({Key? key, required this.cubit}) : super(key: key);
  final OnBoardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: cubit.pageController,
        itemCount: boardingData.length,
        onPageChanged: cubit.onPageChanged,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => BuildBoardingItem(index: index),
      ),
    );
    ;
  }
}
