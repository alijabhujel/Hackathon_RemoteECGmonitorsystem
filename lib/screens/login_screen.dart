import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecg_app/components/button.dart';


class Login_Screen extends StatelessWidget {
  Login_Screen({super.key});

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  void signuserin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/background.png",
              height: 250,
            ),
            Text(
              "Welcome to our app!",
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20)),
            ),
            const SizedBox(
              height: 20,
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Login_Button(
              text: "Login",
              onTap: () {
              }
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[300],
                  )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or Continue with"),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[300],
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?'),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Text(
                    'Register Now ',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();

  }
}
