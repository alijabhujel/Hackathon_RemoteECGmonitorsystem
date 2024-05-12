import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilelist_Builder extends StatelessWidget {
  final String text;
  final IconData icon;
  const Profilelist_Builder(
      {super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ListTile(
        leading: Icon(
          icon,
          size: 22,
        ),
        title: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 15),
        ),
      ),
    );
  }
}
