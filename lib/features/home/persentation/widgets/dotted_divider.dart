import 'package:dexef_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DottedDivider extends StatelessWidget {
  const DottedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const dotRadius = 4.0; // Adjust the radius of the dots as needed
    const spacing = 8.0; // Adjust the spacing between dots as needed

    final numberOfDots = (screenWidth / (0.8 * dotRadius + spacing)).floor();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        numberOfDots,
        (index) => Container(
          width: dotRadius*0.5,
          height: dotRadius*0.5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.grey,
          ),
          margin: const EdgeInsets.symmetric(horizontal: spacing / 2),
        ),
      ),
    );
  }
}