import 'package:flutter/material.dart';

class SocialmediaList extends StatelessWidget {
  const SocialmediaList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
        SizedBox(
          width: 12,
        ),
        Image(
            height: 30,
            width: 30,
            image: AssetImage('assets/images/google.png')),
        SizedBox(
          width: 12,
        ),
        Image(
            height: 32,
            width: 32,
            image: AssetImage('assets/images/twi-removebg-preview.png')),
        SizedBox(
          width: 14,
        ),
        Image(
            height: 35,
            width: 35,
            image: AssetImage('assets/images/linkedin.png'))
      ],
    );
  }
}
