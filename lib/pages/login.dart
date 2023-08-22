import 'package:flutter/material.dart';
import 'package:laundry_ui/utils/constants.dart';
import 'package:laundry_ui/utils/helper.dart';
import 'package:laundry_ui/widgets/app_button.dart';
import 'package:laundry_ui/widgets/input_widget.dart';

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
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 15.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Log in to your account",
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height - 180.0,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          color: Colors.white),
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InputWidget(
                            topLabel: "Email",
                            hintText: "Enter your email address",
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          InputWidget(
                              topLabel: "Password",
                              obscureText: true,
                              hintText: "Enter your password"),
                          const SizedBox(
                            height: 15.0,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Forget Password?",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          AppButton(
                              type: ButtonType.PRIMARY,
                              onPressed: () {
                                nextScreen(context, "/dashboard");
                              },
                              text: "Log In")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
