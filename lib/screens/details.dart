import 'package:ecg_app/components/fifth_rowdetails.dart';
import 'package:ecg_app/components/first_rowdetails.dart';
import 'package:ecg_app/components/fourth_rowdetails.dart';
import 'package:ecg_app/components/second_rowdetails.dart';
import 'package:ecg_app/components/third_rowdetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App_Details extends StatelessWidget {
  const App_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Center(
              child: Text(
            'I N F O R M A T I O N',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
          )),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              FirstRow_Details(),
              SizedBox(
                height: 5,
              ),
              SecondRow_Details(),
              SizedBox(
                height: 5,
              ),
              ThirdRow_details(),
              SizedBox(
                height: 5,
              ),
              FourthRow_Details(),
              SizedBox(
                height: 5,
              ),
              FifthRow_Details(),
            ],
          ),
        ));
  }
}
