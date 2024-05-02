import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // **para obtener el tamaño de la pantalla
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SvgPicture.asset(
            'assets/Vector.svg',
          )
        ),
      ),
    );
  }
}