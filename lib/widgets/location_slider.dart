import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:laundry_ui/models/location.dart';

class LocationSlider extends StatelessWidget {
  const LocationSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Location> location = [
      Location(
          address: "Kings Street",
          color: const Color.fromRGBO(89, 69, 199, 1),
          imagePath: "assets/images/house1.png",
          state: "Bucharest"),
      Location(
          address: "Victory Square 18",
          color: const Color.fromRGBO(237, 116, 41, 1),
          imagePath: "assets/images/house2.png",
          state: "Bucharest")
    ];
    return SizedBox(
        height: ScreenUtil().setHeight(90.0),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: ScreenUtil().setWidth(200.0),
                decoration: BoxDecoration(
                  color: location[index].color,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(169, 176, 185, 0.42),
                        spreadRadius: 0,
                        blurRadius: 8.0,
                        offset: Offset(0, 2))
                  ],
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 12.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      right: -16.0,
                      top: 0.0,
                      child: Opacity(
                        opacity: 0.69,
                        child: Image.asset(location[index].imagePath),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${location[index].address},\n",
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                fontSize: 16.0),
                          ),
                          TextSpan(
                              text: location[index].state,
                              style: const TextStyle(fontSize: 16.0))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 15.0,
            );
          },
          itemCount: location.length,
        ));
  }
}
