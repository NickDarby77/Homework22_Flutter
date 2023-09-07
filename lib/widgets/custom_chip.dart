import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.text,
    this.isActive = false,
  });

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 3,
      ),
      child: Container(
        height: 38,
        decoration: BoxDecoration(
          color: isActive ? AppColors.green : AppColors.boxDecorationbgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 10,
          ),
          child: Center(
            child: Text(
              text,
              style: AppFonts.w500s12,
            ),
          ),
        ),
      ),
    );
  }
}
