import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_1_algoriza/view/On%20boarding%20page/Controller/on_boarding_cubit.dart';

import '../../../constants/colors.dart';
import '../Model/boarding_model.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({Key? key, required this.cubit}) : super(key: key);
  final OnBoardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: SmoothPageIndicator(
          controller: cubit.pageController,
          count: boardingData.length,
          effect: const ExpandingDotsEffect(
            expansionFactor: 1.5,
            dotColor: Colors.grey,
            activeDotColor: dotColor,
            dotHeight: 7,
            dotWidth: 10,
          ),
        ),
      ),
    );
  }
}
