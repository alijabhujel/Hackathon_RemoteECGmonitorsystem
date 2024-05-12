
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecg_app/screens/login_screen.dart';



class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login_Screen()));
      },
      child: Container(
        width: 110,
        height: 35,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Row(
            children: [
              Text(
                'Log out',
                style: GoogleFonts.poppins(color: Colors.white),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.logout,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
