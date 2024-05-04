import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: SizedBox(
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
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
                  margin: EdgeInsets.only(right: size.width*.05, bottom: size.height*.05),
                  height: size.height*.4,
                  width: size.width*.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color.fromARGB(255, 246, 47, 47).withOpacity(0.5)),
                    color: Colors.white.withOpacity(0.5),
                  ),
                    child: Column(
                      children: [
                        const Text("Bienvenido a VetApp", style: TextStyle(color: Colors.black, fontSize: 30),),
                        TextField(
                          
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                       const SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login'),
                        ),
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
