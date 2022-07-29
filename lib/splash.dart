import 'package:flutter/material.dart';
import 'dart:async';

import 'package:quizapp/quiz.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void moveScreen() async {
    print('moveScreen~~~');
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Quiz(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      moveScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('asset/quizimg.png'),
      ),
    );
  }
}