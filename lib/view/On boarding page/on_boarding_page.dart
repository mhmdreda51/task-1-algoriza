import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Componants/app_logo.dart';
import 'Componants/boarding_page_view.dart';
import 'Componants/next_button.dart';
import 'Componants/page_view_indicator.dart';
import 'Componants/sign_up_row.dart';
import 'Componants/skip_button.dart';
import 'Controller/on_boarding_cubit.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = OnBoardingCubit.get(context);
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SkipButton(cubit: cubit),
                    const AppLogo(),
                    BoardingPageView(cubit: cubit),
                    PageViewIndicator(cubit: cubit),
                    NextButton(cubit: cubit),
                    const SignUpRow(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
