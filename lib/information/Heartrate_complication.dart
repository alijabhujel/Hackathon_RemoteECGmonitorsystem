import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeartRate_Complication extends StatelessWidget {
  const HeartRate_Complication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Heart rate Complications")),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "assets/images/info.png",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Heart rate complications can arise from abnormalities in the heart's rhythm or rate. When the heart beats too quickly, a condition known as tachycardia, it can strain the heart muscle and increase the risk of serious issues like heart attack, stroke, or sudden cardiac arrest. Conversely, bradycardia, where the heart beats too slowly, can lead to reduced blood flow and symptoms such as dizziness, fainting, or even heart failure. Arrhythmias, irregular heart rhythms, can disrupt the heart's ability to pump blood effectively, potentially causing blood clots, stroke, or cardiac arrest. These complications underscore the importance of monitoring heart rate and seeking medical attention for any persistent irregularities or symptoms.",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
