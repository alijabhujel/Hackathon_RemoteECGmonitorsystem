import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(
    //     Duration(seconds: 4),
    //     () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    //         builder: (BuildContext context) => Option_Screen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.grey],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: Center(
          child: Image.asset("assets/images/ecg logo.png"),
        ),
      ),
    );
  }
}
