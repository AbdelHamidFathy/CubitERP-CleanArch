import 'package:dexef_task/core/utils/app_colors.dart';
import 'package:dexef_task/core/utils/app_strings.dart';
import 'package:dexef_task/core/widgets/custom_text.dart';
import 'package:dexef_task/core/widgets/vertical_space.dart';
import 'package:dexef_task/features/home/persentation/widgets/available_cash.dart';
import 'package:dexef_task/features/home/persentation/widgets/cash_transaction_item.dart';
import 'package:dexef_task/features/home/persentation/widgets/chart.dart';
import 'package:dexef_task/features/home/persentation/widgets/dotted_divider.dart';
import 'package:dexef_task/features/home/persentation/widgets/home_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Chart(),
              const VerticalSpace(),
              CustomText(
                text: "${38}%",
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: AppStrings.salesAmount,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: AppStrings.comparedByPreviousMonth,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: LinearProgressBar(
                  maxSteps: 100,
                  progressType: LinearProgressBar.progressTypeLinear,
                  currentStep: 38,
                  progressColor: AppColors.primaryColor,
                  backgroundColor: AppColors.grey.withOpacity(0.5),
                  minHeight: 1.2.h,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              const AvailableCash(),
              SizedBox(
                height: 4.h,
              ),
              const VerticalSpace(),
              CustomText(
                text: AppStrings.cashTransactions,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
              const VerticalSpace(),
              CashTransactionItem(
                subTitle: AppStrings.received,
                amount: 12243.55,
              ),
              const VerticalSpace(),
              const DottedDivider(),
              const VerticalSpace(),
              CashTransactionItem(
                subTitle: AppStrings.paid,
                amount: 12243.55,
              ),
              const VerticalSpace(),
              const DottedDivider(),
              const VerticalSpace(),
              CashTransactionItem(
                subTitle: AppStrings.netAmount,
                amount: 12243.55,
                netAmount: true,
              ),
              const VerticalSpace(),
              const DottedDivider(),
              const VerticalSpace(),
              Row(
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: AppColors.primaryColor,
                    size: 5.h,
                  ),
                  CustomText(
                    text: AppStrings.allTransactions,
                    fontSize: 12.sp,
                    fontColor: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
