import 'package:driver/view/bottom_navBar/widget/SpotlightPainter.dart';
import 'package:flutter/material.dart';

class SpotlightNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final int index;
  final VoidCallback onTap;

  const SpotlightNavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 3,
            width: 50,
            decoration: BoxDecoration(
              color: isSelected ? Colors.greenAccent : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              // Custom spotlight behind icon
              if (isSelected)
                CustomPaint(size: Size(70, 50), painter: SpotlightPainter()),

              Column(
                children: [
                  Icon(icon, size: 26, color: Colors.white),
                  SizedBox(height: 4),
                  Text(
                    label,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
