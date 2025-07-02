import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_foodly/common/app_style.dart';
import 'package:restaurant_foodly/common/reusable_text.dart';
import 'package:restaurant_foodly/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.fromLTRB(12.w, 45.h, 12.w, 0),
      height: 100.h,
      color: kSecondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage("assets/images/profile.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: "Kings Food",
                      style: appStyle(14, Colors.white, FontWeight.bold),
                    ),
                    ReusableText(
                      text: "1874 LaFoods Street Union City, NJ 07087",
                      style: appStyle(6, Colors.white, FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/icons/open_sign.svg',
            height: 35.h,
            width: 35.w,
          ),
        ],
      ),
    );
  }
}
