import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vetapp/features/presentation/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      
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
               Container(
                  
                  margin: EdgeInsets.only(right: size.width*.7, bottom: size.height*.9),
                 child: SvgPicture.asset(
                  'assets/Group 1.svg',
                  fit: BoxFit.cover,
                               ),
               ),
                ClipRRect(
                  child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
                  margin: EdgeInsets.only(right: size.width*.05, bottom: size.height*.05),
                  height: size.height*0.37,
                  width: size.width*.9,
                  
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                   
                    color: const Color.fromARGB(255, 229, 219, 243).withOpacity(.7),
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
                        const Text("Bienvenido a VetApp", style: TextStyle(color: Colors.black, fontSize: 30),),
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: CustomFilledButton(
                            text: 'Ingresar',
                            buttonColor: const Color.fromARGB(255, 114, 60, 252),
                            onPressed: (){
                              //ref.read(loginFormProvider.notifier).onFormSubmit();
                              // context.push('/home_view'); //TODO: Cambiar por la ruta correcta
                            },
                          )
                        ),
                        const SizedBox(height: 25,),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: CustomFilledButton(
                            text: 'Escanear Codigo QR',
                            textColor: const Color.fromARGB(255, 52, 52, 52),
                            buttonColor: const Color.fromARGB(255, 244, 239, 239),
                            onPressed: (){
                              //ref.read(loginFormProvider.notifier).onFormSubmit();
                              // context.push('/home_view'); //TODO: Cambiar por la ruta correcta
                            },
                          )
                        ),
                        const SizedBox(height: 30),
                        const Text("Necesitas ayuda?" , style: TextStyle(color: Colors.black, fontSize: 17),)
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
