import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'widgets/header.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reusable Website Template',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainLayout(child: HomePage()),
        '/about': (context) => const MainLayout(child: AboutPage()),
        '/contact': (context) => const MainLayout(child: ContactPage()),
      },
    );
  }
}
class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA), // Light background
      body: Column(
        children: [
          Container(
            color: Colors.blueGrey, // Full-width header background
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 1280), // Limit width
                child: const Header(), // Header with navigation
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 1280), // Limit width
                child: child, // The page's main content
              ),
            ),
          ),
          // Future footer implementation
          // Container(
          //   color: Colors.blueGrey, // Full-width footer background
          //   child: Center(
          //     child: Container(
          //       constraints: const BoxConstraints(maxWidth: 1280), // Limit width
          //       child: const Footer(), // Footer content
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}