import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataPet extends StatefulWidget {
  const DataPet({super.key});

  @override
  State<DataPet> createState() => _DataPetState();
}

class _DataPetState extends State<DataPet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Stack(children: [
        Image.asset('assets/petdog.png'),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .25),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(69, 196, 4, 255),
                  spreadRadius: 5,
                  blurRadius: 40,
                )
              ]),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: const Alignment(-.7, 1),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    "Hulkito",
                    style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      // Add this line
                    ),
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
                          Icons.pets_rounded,
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
                child: Column(
                  children: [
                    const Separador(),
                    const Info(
                      icon: Icons.color_lens,
                      title: 'Color',
                      subtitle: 'Cafe',
                    ),
                    const Separador(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: const Info(
                        icon: Icons.location_on_rounded,
                        title: 'Pais',
                        subtitle: 'Fracia',
                      ),
                    ),
                    const Separador(),
                    const Info(
                      icon: Icons.numbers,
                      title: 'Numero de placa',
                      subtitle: '101-101',
                    ),
                    const Separador(),
                    const Info(
                      icon: Icons.medical_services,
                      title: 'Raza',
                      subtitle: 'Labrador',
                    ),
                    const Separador(),
                    const Info(
                      icon: Icons.medical_information,
                      title: 'Esterelizado',
                      subtitle: '--/--/--',
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class Separador extends StatelessWidget {
  const Separador({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * .8,
          color: const Color.fromARGB(255, 215, 215, 215),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .15,
          child: Icon(
            icon,
            color: Colors.purple,
            size: 30,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.left, // Add this line
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left, // Add this line
            ),
          ],
        ),
      ],
    );
  }
}

class Info2 extends StatelessWidget {
  const Info2({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const Alignment(-.9, 0),
          child: Icon(
            icon,
            color: Colors.purple,
            size: 30,
          ),
        ),
        Align(
          alignment: const Alignment(-.5, -0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left, // Add this line
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left, // Add this line
              ),
            ],
          ),
        ),
      ],
    );
  }
}
