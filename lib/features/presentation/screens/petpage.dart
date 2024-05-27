import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vetapp/features/presentation/screens.dart';

class PagePet extends StatefulWidget {
  static const name = 'pagepet';
  const PagePet({
    super.key,
  });

  @override
  State<PagePet> createState() => _PagePetState();
}

class _PagePetState extends State<PagePet> {
  int _currentIndex = 0;

  final screens = [
    const Center(child: DataPet()),
    const Center(child: VacunasScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: MediaQuery.of(context).size.height * 0.07,
          backgroundColor: const Color.fromARGB(0, 114, 60, 252),
          buttonBackgroundColor: const Color.fromARGB(255, 114, 60, 252),
          color: const Color.fromARGB(255, 114, 60, 252),
          animationDuration: const Duration(milliseconds: 300),
          items: const <Widget>[
            Icon(Icons.pets, size: 26, color: Colors.white),
            Icon(Icons.vaccines, size: 26, color: Colors.white),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        extendBody: true,
        body: Stack(children: [
          Container(
            child: screens[_currentIndex],
          ),
          Positioned(
              top: 30,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  GoRouter.of(context).go('/veterhome');
                },
              )),
        ]));
  }
}
