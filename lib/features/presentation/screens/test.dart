import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://www.tuexperto.com/wp-content/uploads/2023/01/50-fondos-de-pantalla-para-movil-de-paisajes-y-tematica-alegre-19.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  alignment: Alignment.center,
                  width: 320,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child:
                      FilledButton(onPressed: () {}, child: const Text('data')),
                ),
              ),
            ),
          ],
        ));
  }
}