import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vetapp/features/datosdoc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 179, 149, 255), // Color morado
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(top: 40),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Align(
                alignment: const Alignment(0, .4),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(118, 255, 255, 255),
                    ),
                    width: MediaQuery.of(context).size.width * .80,
                    height: MediaQuery.of(context).size.height * .10,
                    child: const Column(
                      children: [
                        SizedBox(height: 30),
                        Align(
                          alignment: Alignment(-.7, 0),
                          child: Text(
                            'Cuidado de la salud de las mascotas',
                            style: TextStyle(
                              color: Color.fromARGB(255, 155, 116, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-.85, 0),
                          child: Text(
                            'Cuidado de la salud de las mascotas',
                            style: TextStyle(
                              color: Color.fromARGB(252, 179, 149, 255),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              //Categorias de la salud de las mascotas
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 179, 149, 255),
                    child: Icon(Icons.circle),
                  ),
                  Text(
                    'Healthy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ]),
                Column(children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 179, 149, 255),
                    child: Icon(Icons.circle),
                  ),
                  Text(
                    'Salud',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ]),
                Column(children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 179, 149, 255),
                    child: Icon(Icons.circle),
                  ),
                  Text(
                    'Salud',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ]),
                Column(children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 179, 149, 255),
                    child: Icon(Icons.circle),
                  ),
                  Text(
                    'Salud',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ]),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(76, 0, 0, 0),
                          spreadRadius: 1,
                          blurRadius: 40,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar veterinario',
                      prefixIcon: const Icon(Icons.search),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 40,
                        minHeight: 40,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                )),
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  // Obtener la información del doctor a partir del índice
                  doctor = getDoctor(index);

                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/veter/$index');
                    },
                    child: Card(
                      color: const Color.fromARGB(255, 179, 149, 255),
                      elevation: 5,
                      shadowColor: const Color.fromARGB(255, 0, 0, 0),
                      child: ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundColor: Colors.white,
                              child: ClipOval(
                                child: Image.asset(
                                  doctor.fotoUrl,
                                  fit: BoxFit.cover,
                                  width: 90,
                                  height: 90,
                                ),
                              ),
                            ),
                            Text(doctor.nombre,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white)),
                            Text(doctor.especialidad,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white)),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.thumb_up,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    doctor.likes.toString(),
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ), // Número de likes
                                  const SizedBox(width: 8),
                                  const Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${doctor.distance} km',
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ), // Distancia
                                ]),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
