import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, 'home');
    },);

    return Scaffold(
      backgroundColor: Colors.amber.shade500,
      body: Center(
        child: Image.asset("assets/logo.png",
            height: 350, width: 400, fit: BoxFit.fill),
      ),
    );
  }
}
