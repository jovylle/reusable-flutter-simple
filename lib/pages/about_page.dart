import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is the About Us Page.',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
