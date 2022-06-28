import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "7",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: logoNum,
          ),
        ),
        Text(
          "Krave",
          style: GoogleFonts.ubuntu(
            color: logoText,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
