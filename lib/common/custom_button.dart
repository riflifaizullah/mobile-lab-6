import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_foodly/common/app_style.dart';
import 'package:restaurant_foodly/common/reusable_text.dart';
import 'package:restaurant_foodly/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    this.btnWidth,
    this.btnHeight,
    this.btnColor,
    this.btnRadius,
    required this.text,
  });

  final void Function()? onTap;
  final double? btnWidth;
  final double? btnHeight;
  final double? btnRadius;
  final String text;
  final Color? btnColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: btnWidth ?? width,
        height: btnHeight ?? 28.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnRadius ?? 12.r),
          color: btnColor ?? kPrimary,
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appStyle(12, kLightWhite, FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
