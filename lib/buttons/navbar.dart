// custom_nav_bar.dart
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  final PageController pageController;
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomNavBar({
    super.key,
    required this.pageController,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return WaterDropNavBar(
      backgroundColor: Colors.white,
      onItemSelected: (index) {
        onItemSelected(index);
        pageController.animateToPage(index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOutQuad);
      },
      selectedIndex: selectedIndex,
      barItems: <BarItem>[
        BarItem(
          filledIcon: Icons.timeline, // Icon for "Realtime"
          outlinedIcon: Icons.timeline_outlined,
        ),
        BarItem(
          filledIcon: Icons.history, // Icon for "Historical"
          outlinedIcon: Icons.history_toggle_off,
        ),
      ],
    );
  }
}
