
import 'dart:io';
import 'package:ecg_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ecg_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase initialization status flag
  bool _firebaseInitialized = false;

  // Firebase initialization with loading indicator
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyBDhn-pTbrD1oX4Yb2sHsquzAInhLn9jxY',
      appId: Platform.isAndroid
          ? '1:828892644101:android:cd4c61ef589485e1e5ed6c'
          : '',
      messagingSenderId: '828892644101',
      projectId: 'ecg-monitoring-system-f71e3',
      storageBucket: "ecg-monitoring-system-f71e3.appspot.com",
    ),
  ).then((_) {
    _firebaseInitialized = true;
  }).catchError((error) {
    print("Firebase initialization error: $error");
  });

  // If Firebase is still initializing, show a loading indicator
  if (!_firebaseInitialized) {
    runApp( MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    ));
    return;
  }

  // If Firebase initialization is successful, run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: Login_Screen(),
          );
        }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Splash_Screen());
  }
}
