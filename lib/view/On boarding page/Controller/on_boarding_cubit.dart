import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_1_algoriza/view/Login/login_screen.dart';

import '../../../core/router/router.dart';
import '../Model/boarding_model.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  //===============================================================

  static OnBoardingCubit get(context) => BlocProvider.of(context);

//===============================================================
  final PageController pageController = PageController();
  bool isLast = false;

//===============================================================
  void submit() {
    // CacheHelper.saveData(key: onBoarding, value: true).then((value) {
    // });
    MagicRouter.navigateAndPopAll(const LoginScreen());

//===============================================================
  }

  void onPageChanged(int index) {
    if (index == boardingData.length - 1) {
      isLast = true;
      emit(OnPageChanged());
    } else {
      isLast = false;
      emit(OnPageChanged());
    }
  }
}
