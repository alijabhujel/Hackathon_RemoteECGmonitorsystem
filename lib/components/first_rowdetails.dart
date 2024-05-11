import 'package:ecg_app/information/Heartrate.dart';
import 'package:ecg_app/information/Heartrate_complication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstRow_Details extends StatelessWidget {
  const FirstRow_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HeartRate()));
            },
            child: Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/ecg logo.png",
                    height: 150,
                  ),
                  Text("Heart Rate?",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ))
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HeartRate_Complication()));
            },
            child: Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/background.png",
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Heart Rate Complication",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
