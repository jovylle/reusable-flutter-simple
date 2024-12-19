import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeroSection(),
              InfoSection(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

// Hero Section
class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueGrey,
      child: Column(
        children: [
          const Text(
            'Minecraft Server Landing Page',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 8),
          const Text(
            'Join the best server for epic adventures!',
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

// Information Section
class InfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Server Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          InfoCard(title: 'Server Name', content: 'EpicCraft'),
          InfoCard(title: 'Status', content: 'Online'),
          InfoCard(title: 'Players Online', content: '42'),
        ],
      ),
    );
  }
}

// Footer
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.black,
      child: const Text(
        '© 2024 EpicCraft Server. All rights reserved.',
        style: TextStyle(color: Colors.white70),
        textAlign: TextAlign.center,
      ),
    );
  }
}

// Reusable Info Card Widget
class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(content),
          ],
        ),
      ),
    );
  }
}
