import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final Function(int) onNavigate;

  const Header({super.key, required this.title, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Navigation Buttons
          Row(
            children: [
              TextButton(
                onPressed: () => onNavigate(0),
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () => onNavigate(1),
                child: const Text(
                  'About Us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () => onNavigate(2),
                child: const Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
