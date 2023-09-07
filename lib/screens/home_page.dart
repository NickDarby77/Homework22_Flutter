import 'package:flutter/material.dart';
import 'package:flutter_lesson22/screens/onboarding_screen.dart';
import '../widgets/three_containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Containers(
              icon1: Icons.ad_units,
              text1: 'Current Weight',
              text2: '--- kgs',
            ),
            const Containers(
              icon1: Icons.line_weight_outlined,
              text1: 'Target Weight',
              text2: '--- kgs',
            ),
            const Containers(
              icon1: Icons.drive_file_rename_outline_outlined,
              text1: 'Height',
              text2: '--- cms',
            ),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnboardingScreen(),
                  ),
                );
              },
              child: const Text(
                'Next Page',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
