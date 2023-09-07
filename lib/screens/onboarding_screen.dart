import 'package:flutter/material.dart';
import 'package:flutter_lesson22/theme/app_colors.dart';
import 'package:flutter_lesson22/theme/app_fonts.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custom_container.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'What`s your strength\nlevel?',
              style: AppFonts.headlines1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomChip(text: 'Vey Low'),
                CustomChip(text: 'Low'),
                CustomChip(text: 'Medium', isActive: true),
                CustomChip(text: 'High'),
                CustomChip(text: 'Vey High'),
              ],
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: 287,
              child: Text(
                'This means you can do 16+ push ups, 3+ pull ups, 3+ single leg squats, and a 1+ minute plank.',
                style: AppFonts.w400s14,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            const Text('...and you have', style: AppFonts.headlines1),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomContainer(
                    title: 'Beginner', duration: '0-6', isActive: true),
                CustomContainer(title: 'Intermediate', duration: '6-18'),
                CustomContainer(title: 'Advanced', duration: '18+'),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              'strength training experience in the last 5 years.',
              style: AppFonts.w400s14,
            ),
            const SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/images/cristiano-ronaldo.jpg',
              scale: 3,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.home,
          size: 45,
          color: Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
