import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeartRate extends StatelessWidget {
  const HeartRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Heart rate ?")),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 700,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset("assets/images/background.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Heart rate, also known as pulse, is the number of times your heart beats per minute. It is a vital sign that can provide important information about your health and fitness level. The normal resting heart rate for adults is typically between 60 and 100 beats per minute, but this can vary based on factors such as age, fitness level, and overall health. Regular monitoring of heart rate can help assess your cardiovascular health and track changes over time.",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 16)),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
