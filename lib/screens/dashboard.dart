import 'package:ecg_app/components/patient_details.dart';
import 'package:ecg_app/screens/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard_Screen extends StatefulWidget {
  Dashboard_Screen({super.key});

  @override
  State<Dashboard_Screen> createState() => _Dashboard_ScreenState();
}

class _Dashboard_ScreenState extends State<Dashboard_Screen> {
  List<String> images = [
    "https://tse1.mm.bing.net/th?id=OIP.YNBUPMGh5fI_AQ2JSYgHSgHaE8&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.YNBUPMGh5fI_AQ2JSYgHSgHaE8&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.YNBUPMGh5fI_AQ2JSYgHSgHaE8&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.YNBUPMGh5fI_AQ2JSYgHSgHaE8&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.YNBUPMGh5fI_AQ2JSYgHSgHaE8&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.YNBUPMGh5fI_AQ2JSYgHSgHaE8&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.YNBUPMGh5fI_AQ2JSYgHSgHaE8&pid=Api&P=0&h=180",
  ];

  late final PageController pageController;
  int pageno = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Center(
            child: Text(
          'P A T I E N T  M O N I T O R',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          )),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello!',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dr.Alley',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.green)),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            // first slider of images

            SizedBox(
                height: 250,
                width: double.infinity,
                child: PageView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Image.network(
                        images[index % images.length],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                })),

            //patient details start

            Padding(
              padding: const EdgeInsets.only(right: 250, top: 15),
              child: Text(
                'Patient Details',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //slider of patient details

            SizedBox(
              height: 250,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Reviw_Screen()),
                  );
                },
                child: PageView.builder(
                  onPageChanged: (index) {
                    pageno = index;
                    setState(() {});
                  },
                  controller: pageController,
                  itemBuilder: (_, index) {
                    return AnimatedBuilder(
                        animation: pageController,
                        builder: (context, child) {
                          return child!;
                        },
                        child: Patient_Details(
                          reviewed: true,
                        ));
                  },
                  itemCount: 8,
                ),
              ),
            ),

            // circular indicator dots

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  8,
                  (index) => Container(
                        margin: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.circle,
                          size: 12,
                          color: pageno == index ? Colors.green : Colors.grey,
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
