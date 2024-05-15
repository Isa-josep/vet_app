import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VeterinarianProfile extends StatefulWidget {
  const VeterinarianProfile({super.key});

  @override
  State<VeterinarianProfile> createState() => _VeterinarianProfileState();
}

class _VeterinarianProfileState extends State<VeterinarianProfile> {
  int _currentIndex = 0;

  final screens = [
    const Center(child: Profile()),
    Center(child: Llamada()),
  ];
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
          Image.asset('assets/docprueba.png'),
          Container(
            child: screens[_currentIndex],
          )
        ]));
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      color: const Color.fromARGB(255, 196, 4, 255), width: 1),
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
                      color: const Color.fromARGB(255, 196, 4, 255), width: 1),
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
                      color: const Color.fromARGB(255, 196, 4, 255), width: 1),
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
    );
  }
}

class Llamada extends StatelessWidget {
  const Llamada({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      color: const Color.fromARGB(255, 196, 4, 255), width: 1),
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
                      color: const Color.fromARGB(255, 196, 4, 255), width: 1),
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
                      color: const Color.fromARGB(255, 196, 4, 255), width: 1),
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
    );
  }
}
