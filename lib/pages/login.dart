import 'package:flutter/material.dart';
import 'package:laundry_ui/utils/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              right: 0.0,
              top: -20.0,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                    "assets/images/washing_machine_illustration.png"),
              ))
        ],
      )),
    );
  }
}
