import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/images/login.png"),
      width: double.infinity,
      height: 250,
    );
  }
}
