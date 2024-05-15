import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vetapp/features/presentation/widgets.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Container(
          color: const Color.fromARGB(227, 241, 241, 241),
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              SvgPicture.asset(
                'assets/Vector.svg',
                fit: BoxFit.cover,
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 0),
                    margin: EdgeInsets.only(
                        right: size.width * .05, bottom: size.height * .05),
                    height: size.height * .4,
                    width: size.width * .9,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20),

                      color: const Color.fromARGB(255, 229, 219, 243)
                          .withOpacity(.7),
                      // boxShadow:   const [
                      //   BoxShadow(
                      //     color: Colors.black26,
                      //     spreadRadius: 0,
                      //     blurRadius: 5,
                      //     offset: Offset(0, 10),
                      //   ),
                      // ]
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Inicie sesion para continuar",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                        const CustomTextFormField(
                          label: 'Correo',
                          hint: 'Correo',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomTextFormField(
                          label: 'Contraseña',
                          hint: 'Contraseña',
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: CustomFilledButton(
                              text: 'Ingresar',
                              // textColor: const Color.fromARGB(255, 52, 52, 52),
                              buttonColor:
                                  const Color.fromARGB(255, 114, 60, 252),
                              onPressed: () {
                                //ref.read(loginFormProvider.notifier).onFormSubmit();
                                context.push('/veterhome');
                                //TODO: Cambiar por la ruta correcta
                              },
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
