import 'package:flutter/material.dart';
import 'package:laundry_ui/utils/constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 100.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cloth_faded.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Image.asset(
                        "assets/images/illustration.png",
                        scale: 1.1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 24.0,
                ),
                decoration: BoxDecoration(
                  color: Constants.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
