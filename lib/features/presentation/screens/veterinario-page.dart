import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vetapp/features/presentation/screens/homepage.dart';
import 'package:vetapp/features/presentation/screens/initial_screen.dart';

class VeterinarioPage extends StatefulWidget {
  const VeterinarioPage({super.key});

  @override
  State<VeterinarioPage> createState() => _VeterinarioPageState();
}

class _VeterinarioPageState extends State<VeterinarioPage> {
  int _currentIndex = 0;

  final screens = [
    const Center(child: HomePage()),
    Center(child: InitialScreen()),
    Center(child: HomePage()),
    const Center(child: InitialScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        height: MediaQuery.of(context).size.height * 0.07,
        backgroundColor: Color.fromARGB(0, 114, 60, 252),
        buttonBackgroundColor: Color.fromARGB(255, 114, 60, 252),
        color: Color.fromARGB(255, 114, 60, 252),
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.home, size: 26, color: Colors.white),
          Icon(Icons.message, size: 26, color: Colors.white),
          Icon(Icons.notifications, size: 26, color: Colors.white),
          Icon(Icons.person, size: 26, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: screens[_currentIndex],
    );
  }
}
