import 'package:ecg_app/components/logout.dart';
import 'package:ecg_app/components/profile_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class My_Profile extends StatefulWidget {
  const My_Profile({Key? key}) : super(key: key);

  @override
  _My_ProfileState createState() => _My_ProfileState();
}

class _My_ProfileState extends State<My_Profile> {
  bool _showLanguageDropdown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Center(
          child: Text(
            'P R O F I L E',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sun.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: 330,
                  height: 610,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.blueGrey,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.blueGrey,
                          child: CircleAvatar(
                            radius: 55,
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Maniya Sharma',
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        'Cardio Specialist',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[400],
                          ),
                          onPressed: () {},
                          child: Text(
                            'Edit profile',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const Profilelist_Builder(
                          text: "Share with Friends", icon: Icons.share),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _showLanguageDropdown = !_showLanguageDropdown;
                          });
                          if (_showLanguageDropdown) {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Language()),
                            // );
                          }
                        },
                        child: const Profilelist_Builder(
                          text: "Language",
                          icon: Icons.language,
                        ),
                      ),
                      const Profilelist_Builder(
                          text: "Privacy Policy", icon: Icons.privacy_tip),
                      const Profilelist_Builder(
                          text: "Settings", icon: Icons.settings),
                      const SizedBox(
                        height: 20,
                      ),
                      Logout(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
