import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

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
      Center(child: Llamada()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: MediaQuery.of(context).size.height * 0.07,
          backgroundColor: Color.fromARGB(0, 114, 60, 252),
          buttonBackgroundColor: Color.fromARGB(255, 114, 60, 252),
          color: Color.fromARGB(255, 114, 60, 252),
          animationDuration: const Duration(milliseconds: 300),
          items: const <Widget>[
            Icon(Icons.home, size: 26, color: Colors.white),
            Icon(Icons.message, size: 26, color: Colors.white),
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

class Doctor {
  final String nombre;
  final String especialidad;
  final String especialidad2;
  final String especialidad3;
  final String fotoUrl;
  // Agrega otras propiedades relevantes

  Doctor({
    required this.nombre,
    required this.especialidad,
    required this.especialidad2,
    required this.especialidad3,
    required this.fotoUrl,
  });
}

final List<Doctor> doctores = [
  Doctor(
      nombre: 'Dr. Juan Pérez',
      especialidad: 'Cardiólogo',
      especialidad2: 'Cardiólogo',
      especialidad3: 'Cardiólogo',
      fotoUrl: 'assets/doc.webp'),
  Doctor(
      nombre: 'Dra. Ana Domínguez',
      especialidad: 'Dermatóloga',
      especialidad2: 'Dermatóloga',
      especialidad3: 'Dermatóloga',
      fotoUrl: 'assets/docprueba.png'),
  Doctor(
      nombre: 'Dr. Pedro González',
      especialidad: 'Neurólogo',
      especialidad2: 'Neurólogo',
      especialidad3: 'Neurólogo',
      fotoUrl: 'assets/doc.webp'),
  Doctor(
      nombre: 'Dra. María López',
      especialidad: 'Pediatra',
      especialidad2: 'Pediatra',
      especialidad3: 'Pediatra',
      fotoUrl: 'assets/docprueba.png'),
  Doctor(
      nombre: 'Dr. David Hernández',
      especialidad: 'Psiquiatra',
      especialidad2: 'Psiquiatra',
      especialidad3: 'Psiquiatra',
      fotoUrl: 'assets/doc.webp'),
];

Doctor getDoctor(int index) {
  return doctores[index];
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
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .03,
                        width: MediaQuery.of(context).size.width * .20,
                        decoration: BoxDecoration(
                          color: Color(0xFFDDC2FF),
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Color(0xFFDDC2FF), width: 1),
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
                          border:
                              Border.all(color: Color(0xFFDDC2FF), width: 1),
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
                const Align(
                  alignment: Alignment(-.7, 1),
                  child: Text(
                    "Informacion adicional",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 48, 48, 48),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 215, 215, 215),
                        spreadRadius: 0,
                        blurRadius: 0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(),
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
    return FadeInUpBig(
      duration: const Duration(milliseconds: 700),
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .45),
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
            const Align(
              alignment: Alignment(-.7, 1),
              child: Text(
                "Hulkito",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  // Add this line
                ),
              ),
            ),
            const Align(
                alignment: Alignment(-.7, 1),
                child: Text("Bull dog",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                      decoration: TextDecoration.none,
                    ))),
            const SizedBox(
              height: 20,
            ),
            //Row de Datos de la mascota
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .07,
                  width: MediaQuery.of(context).size.width * .25,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 196, 4, 255),
                        width: 1),
                  ),
                  child: const Column(
                    //Edad
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Edad",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          )),
                      Text("2 años",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ))
                    ],
                  ),
                ),
                Container(
                  //Genero
                  height: MediaQuery.of(context).size.height * .07,
                  width: MediaQuery.of(context).size.width * .25,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 196, 4, 255),
                        width: 1),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Genero",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          )),
                      Icon(
                        Icons.woman_2_rounded,
                        color: Colors.purple,
                        size: 15,
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .07,
                  width: MediaQuery.of(context).size.width * .25,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 196, 4, 255),
                        width: 1),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Peso",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          )),
                      Text("20 kg",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment(-.7, 1),
              child: Text(
                "Informacion ",
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 48, 48, 48),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 215, 215, 215),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(),
            ),
          ],
        )),
      ),
    );
  }
}
