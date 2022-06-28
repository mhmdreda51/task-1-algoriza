import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1_algoriza/view/On%20boarding%20page/on_boarding_page.dart';

import 'core/blocObserver/bloc_observer.dart';
import 'core/router/router.dart';

void main() async {
  //===============================================================

  Bloc.observer = MyBlocObserver();
  //===============================================================

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1 ',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: const OnBoardingPage(),
    );
  }
}
