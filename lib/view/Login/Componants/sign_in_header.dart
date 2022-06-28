import 'package:flutter/material.dart';

import '../../../widgets/headers.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextHeader(text: "Welcome to Fashion Daily"),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TextHeader(
              text: "Sign in",
              size: 28,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  TextHeader(
                    text: "Help",
                    size: 14,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.help,
                    color: Colors.blue,
                    size: 16,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
