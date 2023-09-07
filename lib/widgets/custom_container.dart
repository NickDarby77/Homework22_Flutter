import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.title,
    required this.duration,
    this.isActive = false,
  });

  final String title;
  final String duration;

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 108,
        width: 98,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 237, 233, 181),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isActive ? AppColors.borderColor : AppColors.borderColor2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          child: Column(
            children: [
              Text(title, style: AppFonts.w600s12),
              const SizedBox(
                height: 12,
              ),
              Text(duration, style: AppFonts.headlines1),
              const Text('months', style: AppFonts.w400s12),
            ],
          ),
        ),
      ),
    );
  }
}
