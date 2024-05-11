import 'package:ecg_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Option_Screen extends StatelessWidget {
  const Option_Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    Offset distance = Offset(28, 28);
    double blur = 30;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 300),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login_Screen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            blurRadius: blur,
                            offset: distance,
                            color: Color(0xFFA7A9AF),
                          ),
                          BoxShadow(
                            blurRadius: blur,
                            offset: -distance,
                            color: Colors.white,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image.asset("assets/images/background.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login_Screen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: blur,
                            offset: distance,
                            color: Color(0xFFA7A9AF),
                          ),
                          BoxShadow(
                            blurRadius: blur,
                            offset: -distance,
                            color: Colors.white,
                          ),
                        ],
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/staff.png",
                        height: 300,
                        width: 100,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  Text(
                    'Doctor',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Clinical Staff',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
