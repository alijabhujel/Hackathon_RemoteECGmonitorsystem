import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Patient_Details extends StatelessWidget {
  const Patient_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.green[300], borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name   : Shreya Magar',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            Text(
              "Age       : 60",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            Text(
              "Height  : 165cm",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            Text(
              "Weight : 65kg",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
