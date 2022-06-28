import 'package:flutter/material.dart';

import '../Model/boarding_model.dart';

class BuildBoardingItem extends StatelessWidget {
  const BuildBoardingItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Image(
            image: AssetImage(boardingData[index].imagePath),
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          boardingData[index].title.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30.0),
        Text(
          boardingData[index].subTitle.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
      ],
    );
  }
}
