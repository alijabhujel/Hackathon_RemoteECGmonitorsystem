import 'package:ecg_app/screens/dashboard.dart';
import 'package:ecg_app/screens/details.dart';
import 'package:ecg_app/screens/my_profile.dart';
import 'package:ecg_app/screens/review_screen.dart';
import 'package:flutter/material.dart';

class Doctor_Screen extends StatefulWidget {
  const Doctor_Screen({super.key});

  @override
  State<Doctor_Screen> createState() => _Doctor_ScreenState();
}

class _Doctor_ScreenState extends State<Doctor_Screen> {
  int myCurrentindex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
            child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    myCurrentindex = index;
                  });
                },
                children: [
              Dashboard_Screen(),
              Reviw_Screen(),
              App_Details(),
              My_Profile()
            ])),
        bottomNavigationBar: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 25,
                  offset: Offset(8, 20)),
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.black,
                currentIndex: myCurrentindex,
                onTap: (index) {
                  setState(() {
                    _pageController.jumpToPage(index);
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.reviews), label: "Review"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.info), label: "Info"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: "Settings"),
                ],
              ),
            )));
  }
}
