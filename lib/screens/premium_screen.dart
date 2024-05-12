
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Premium_Screen extends StatefulWidget {
  const Premium_Screen({Key? key});

  @override
  State<Premium_Screen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<Premium_Screen> {
   GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Center(
          child: Text(
            'P R E M I U M ',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          PickImage(formKey: key ),
          // Add more PickImage widgets as needed...
        ],
      ),
    );
  }
}

class PickImage extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  PickImage({Key? key, required this.formKey}) : super(key: key);

  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerAge = TextEditingController();
  TextEditingController _controllerHeight = TextEditingController();
  TextEditingController _controllerWeight = TextEditingController();
  TextEditingController _controllerHistory = TextEditingController();
  TextEditingController _controllerReport = TextEditingController();

  CollectionReference _reference =
      FirebaseFirestore.instance.collection('premium_list');

  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _controllerName,
              decoration: InputDecoration(
                hintText: 'Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controllerAge,
              decoration: InputDecoration(
                hintText: 'Age',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your age';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controllerHeight,
              decoration: InputDecoration(
                hintText: 'Height',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your height';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controllerWeight,
              decoration: InputDecoration(
                hintText: 'Weight',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your weight';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controllerHistory,
              decoration: InputDecoration(
                hintText: 'Past medical history',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your medical history';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controllerReport,
              decoration: InputDecoration(
                hintText: 'Report from',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the hospital name';
                }
                return null;
              },
            ),

            IconButton(
              onPressed: () async {
                // Step 1: Pick image
                ImagePicker imagePicker = ImagePicker();
                XFile? file = await imagePicker.pickImage(
                    source: ImageSource.camera); // Pick image from camera
                if (file == null) return;

                // Step 2: Upload the image to Firebase storage
                Reference referenceRoot =
                    FirebaseStorage.instance.ref(); // Get the root reference
                Reference referenceDirImages =
                    referenceRoot.child('images'); // Get reference to images folder

                // Create a unique filename for the image
                String uniqueFileName =
                    DateTime.now().millisecondsSinceEpoch.toString();
                Reference referenceImageToUpload =
                    referenceDirImages.child(uniqueFileName);

                // Handle errors/success
                try {
                  // Store the file
                  await referenceImageToUpload.putFile(File(file.path));
                  // Success: get the download URL
                  imageUrl =
                      await referenceImageToUpload.getDownloadURL();
                  // Set the imageUrl in the state
                  // setState(() {});
                } catch (error) {
                  // Some error occurred
                  print("Error uploading image: $error");
                }
              },
              icon: Icon(Icons.camera_alt),
            ),
            ElevatedButton(
              onPressed: () async {
                if (imageUrl.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please upload an image')));
                  return;
                }

                if (formKey.currentState!.validate()) {
                  String itemName = _controllerName.text;
                  String itemAge = _controllerAge.text;
                  String itemHeight = _controllerHeight.text;
                  String itemWeight = _controllerWeight.text;
                  String itemHistory = _controllerHistory.text;
                  String itemReport = _controllerReport.text;

                  // Create a Map of data to send to Firestore
                  Map<String, dynamic> dataToSend = {
                    'name': itemName,
                    'age': itemAge,
                    'height': itemHeight,
                    'weight': itemWeight,
                    'history': itemHistory,
                    'report_from': itemReport,
                    'image': imageUrl,
                  };

                  // Add a new item to Firestore
                  await _reference.add(dataToSend);

                  // Clear the form fields
                  _controllerName.clear();
                  _controllerAge.clear();
                  _controllerHeight.clear();
                  _controllerWeight.clear();
                  _controllerHistory.clear();
                  _controllerReport.clear();
                  // Clear imageUrl so that next time user uploads new image
                  imageUrl = '';

                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Item added successfully')));
                }
              },
              child: Text('Submit'),
            ),

            // Display uploaded image
            if (imageUrl.isNotEmpty)
              Image.network(
                imageUrl,
                width: 100,
                height: 100,
              ),
          ],
        ),
      ),
    );
  }
}




