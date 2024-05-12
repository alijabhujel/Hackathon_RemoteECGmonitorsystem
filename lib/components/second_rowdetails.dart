import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRow_Details extends StatelessWidget {
  const SecondRow_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/info.png",
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text("Heart Rate Triggers",
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
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.purple[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/info2.png",
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: Text("Common Heart Diseases",
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
      ],
    );
  }
}
