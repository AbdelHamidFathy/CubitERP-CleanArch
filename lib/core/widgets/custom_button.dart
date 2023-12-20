// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:dexef_task/core/utils/app_colors.dart';
import 'package:dexef_task/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    this.onTap,
    required this.buttonText,
    this.buttonColor,
    this.fontColor,
    this.buttonIcon,
    this.buttonRadius,
    this.fontSize,
    this.buttonHeight,
    this.buttonWidth,
    this.horizontalPadding,
    this.verticalPadding,
    this.fontWeight,
    this.iconColor,
    this.iconSize,
    this.iconAlignmentRight,
    this.materialIcon,
  }) : super(key: key);
  void Function()? onTap;
  String buttonText;
  Color? fontColor = const Color(0xffFFFFFF);
  Color? iconColor = const Color(0xffFFFFFF);
  Color? buttonColor = AppColors.primaryColor;
  String? buttonIcon;
  IconData? materialIcon;
  double? buttonRadius;
  double? buttonHeight;
  double? buttonWidth;
  double? fontSize;
  double? iconSize;
  double? horizontalPadding;
  double? verticalPadding;
  FontWeight? fontWeight;
  bool? iconAlignmentRight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth ?? double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 3.w,
          vertical: verticalPadding ?? 1.5.h,
        ),
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(buttonRadius ?? 5.0),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (materialIcon != null && iconAlignmentRight == null)
                Icon(
                  materialIcon,
                  color: iconColor ?? Colors.white,
                  size: iconSize ?? 2.7.h,
                ),
              if (buttonIcon != null && iconAlignmentRight == null)
                SvgPicture.asset(
                  buttonIcon!,
                  color: iconColor ?? Colors.white,
                  height: iconSize ?? 1.5.h,
                ),
              if (buttonIcon != null ||
                  materialIcon != null && iconAlignmentRight == null)
                SizedBox(
                  width: 3.w,
                ),
              CustomText(
                text: buttonText,
                fontSize: fontSize ?? 13.sp,
                fontColor: fontColor ?? Colors.white,
                fontWeight: fontWeight ?? FontWeight.bold,
              ),
              if (buttonIcon != null && iconAlignmentRight != null)
                SizedBox(
                  width: 3.w,
                ),
              if (buttonIcon != null && iconAlignmentRight != null)
                SvgPicture.asset(
                  buttonIcon!,
                  color: iconColor ?? Colors.white,
                  height: iconSize ?? 1.5.h,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
