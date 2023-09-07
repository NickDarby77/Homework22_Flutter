import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({
    super.key,
    required this.icon1,
    required this.text1,
    required this.text2,
  });

  final IconData icon1;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        // horizontal: 25,
        vertical: 5,
      ),
      child: Container(
        width: 350,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffFFFFFF),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff000000),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              child: Icon(
                icon1,
                color: Colors.brown,
              ),
            ),
            Text(
              text1,
              style: const TextStyle(
                color: Color(0xff000000),
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                text2,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff898A8D),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
