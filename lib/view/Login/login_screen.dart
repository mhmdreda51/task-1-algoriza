import 'package:flutter/material.dart';

import 'Componants/image_header.dart';
import 'Componants/sign_in_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const ImageHeader(),
            Container(
              height: 500,
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SignInHeader(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
