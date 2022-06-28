import 'package:flutter/material.dart';
import 'package:task_1_algoriza/constants/colors.dart';
import 'package:task_1_algoriza/core/router/router.dart';
import 'package:task_1_algoriza/view/Register/register_screen.dart';

class SignUpRow extends StatelessWidget {
  const SignUpRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Don't have an account ?",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () => MagicRouter.navigateTo(const RegisterScreen()),
            child: const Text(
              "Sign Up",
              style: TextStyle(color: mainButton, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
