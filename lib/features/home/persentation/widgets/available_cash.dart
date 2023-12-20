import 'package:dexef_task/core/utils/app_colors.dart';
import 'package:dexef_task/core/utils/app_strings.dart';
import 'package:dexef_task/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AvailableCash extends StatelessWidget {
  const AvailableCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
        vertical: 1.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: "${AppStrings.cash}\n${AppStrings.available}",
            fontSize: 18.sp,
            fontColor: Colors.white,
          ),
          CustomText(
            text: "30,000.75",
            fontSize: 22.sp,
            fontColor: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
