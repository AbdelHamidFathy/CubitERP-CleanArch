import 'package:dexef_task/core/utils/app_colors.dart';
import 'package:dexef_task/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.grey,
      unselectedLabelStyle: TextStyle(
        color: AppColors.grey,
      ),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.multitrack_audio),
          label: AppStrings.transactions,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: AppStrings.reports,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: AppStrings.lists,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: AppStrings.search,
        ),
      ],
    );
  }
}
