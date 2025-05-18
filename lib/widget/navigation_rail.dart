import 'package:aplikasi_whatsapp/theme/theme.dart';
import 'package:flutter/material.dart';

class NavigationRailWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const NavigationRailWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      color: lightTheme().scaffoldBackgroundColor,
      child: Column(
        children: [
          const SizedBox(height: 16),
          _buildNavItem(
            index: 0,
            icon: Icons.message,
            badgeCount: 110,
            isSelected: selectedIndex == 0,
          ),
          _buildNavItem(
            index: 1,
            icon: Icons.radio_button_checked,
            showDot: true,
            isSelected: selectedIndex == 1,
          ),
          _buildNavItem(
            index: 2,
            icon: Icons.groups,
            isSelected: selectedIndex == 2,
          ),
          _buildNavItem(
            index: 3,
            icon: Icons.bubble_chart,
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            isSelected: selectedIndex == 3,
          ),
          const Spacer(),
          _buildNavItem(
            index: 4,
            icon: Icons.settings,
            isSelected: selectedIndex == 4,
          ),
          _buildNavItem(
            index: 5,
            icon: Icons.person,
            isSelected: selectedIndex == 5,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    bool isSelected = false,
    int badgeCount = 0,
    bool showDot = false,
    Gradient? gradient,
  }) {
    return GestureDetector(
      onTap: () => onItemSelected(index),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: 48,
        height: 48,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: Icon(
                icon,
                color: Colors.grey.shade600,
              ),
            ),
            if (badgeCount > 0)
              Positioned(
                top: 4,
                right: 4,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '$badgeCount',
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            if (showDot)
              Positioned(
                left: 4,
                top: 4,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            if (gradient != null)
              Positioned(
                bottom: 0,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: gradient,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
