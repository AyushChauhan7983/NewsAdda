import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 300,
          ),
          FadeInImage(
            placeholder: AssetImage("assets/img/logo.png"),
            image: AssetImage("assets/img/logo.png"),
            height: 150,
            width: 150,
          ),
          Spacer(),
          Text(
            "Developed By\nAYUSH CHAUHAN",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
