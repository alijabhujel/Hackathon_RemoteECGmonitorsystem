import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdRow_details extends StatelessWidget {
  const ThirdRow_details({super.key});

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
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/info3.png",
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text("Hypotension ?",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 20,
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
                color: Colors.orange[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/info 4.png",
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text("Diabetes Tests",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 20,
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
