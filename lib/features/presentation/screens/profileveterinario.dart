import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vetapp/features/datosdoc.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:vetapp/features/presentation/screens/profilepet.dart';

class VeterinarianProfile extends StatefulWidget {
  final int pagina;
  static const name = 'vetprofile';
  const VeterinarianProfile({super.key, required this.pagina});

  @override
  State<VeterinarianProfile> createState() => _VeterinarianProfileState();
}

class _VeterinarianProfileState extends State<VeterinarianProfile> {
  int _currentIndex = 0;

  final screens = [];

  @override
  void initState() {
    super.initState();
    screens.addAll(_buildScreens());
  }

  List<Widget> _buildScreens() {
    return [
      Center(child: Profile(index: widget.pagina)),
      const Center(child: Llamada()),
    ];
  }

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
            Icon(Icons.home, size: 26, color: Colors.white),
            Icon(Icons.view_agenda_outlined, size: 26, color: Colors.white),
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

class Profile extends StatefulWidget {
  final int index;

  const Profile({super.key, required this.index});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late Doctor doctor;

  @override
  void initState() {
    super.initState();
    // Obtener la información del doctor a partir del índice
    doctor = getDoctor(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          doctor.fotoUrl,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        FadeInUpBig(
          duration: const Duration(milliseconds: 700),
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .45),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(69, 196, 4, 255),
                    spreadRadius: 5,
                    blurRadius: 40,
                  )
                ]),
            child: SingleChildScrollView(
                child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                // ignore: prefer_const_constructors
                Text(
                  doctor.nombre,
                  style: const TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    // Add this line
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                //Row de Datos de la mascota
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .03,
                        width: MediaQuery.of(context).size.width * .20,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDC2FF),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: const Color(0xFFDDC2FF), width: 1),
                        ),
                        child: Column(
                          //Edad
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(doctor.especialidad,
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 143, 0, 187),
                                  decoration: TextDecoration.none,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        //Genero
                        height: MediaQuery.of(context).size.height * .03,
                        width: MediaQuery.of(context).size.width * .20,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDC2FF),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: const Color(0xFFDDC2FF), width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(doctor.especialidad2,
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 143, 0, 187),
                                  decoration: TextDecoration.none,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .03,
                        width: MediaQuery.of(context).size.width * .20,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDC2FF),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: const Color(0xFFDDC2FF), width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(doctor.especialidad3,
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 143, 0, 187),
                                  decoration: TextDecoration.none,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: const Alignment(-.2, 1),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: const Text(
                      "Informacion del veterinario",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 48, 48, 48),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                const Separador(),
                Align(
                  alignment: const Alignment(-.2, 1),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                      doctor.description,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(241, 130, 130, 130),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),
      ],
    );
  }
}

class Llamada extends StatelessWidget {
  const Llamada({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(milliseconds: 700),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .52,
            decoration: const BoxDecoration(
              color: Color.fromARGB(104, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurStyle: BlurStyle.outer,
                  color: Color.fromARGB(115, 0, 0, 0),
                  spreadRadius: 5,
                  blurRadius: 40,
                )
              ],
            ),
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .0025,
            ),
            width: MediaQuery.of(context).size.width * .9,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
                child: TableCalendar(
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
