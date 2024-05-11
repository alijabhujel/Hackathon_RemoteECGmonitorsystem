import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FifthRow_Details extends StatelessWidget {
  const FifthRow_Details({super.key});

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
                color: Colors.purple[200],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/info.png",
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text("First Aid tips",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18,
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
                color: Colors.yellow[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/info2.png",
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text("Exercises",
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
