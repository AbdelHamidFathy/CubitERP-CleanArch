// ignore_for_file: must_be_immutable

import 'package:dexef_task/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CashTransactionItem extends StatelessWidget {
  CashTransactionItem({
    required this.subTitle,
    required this.amount,
    this.netAmount,
    super.key,
  });
  String subTitle;
  double amount;
  bool? netAmount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: "$subTitle:",
          fontSize: 12.sp,
        ),
        CustomText(
          text: amount.toString(),
          fontSize: 12.sp,
          fontWeight: netAmount != null ?FontWeight.bold:FontWeight.normal,
        ),
      ],
    );
  }
}
