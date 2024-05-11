// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:provider/provider.dart';
// import 'package:remote_ecg_monitoring_system/controller/language_controller.dart';

// class Language extends StatefulWidget {
//   const Language({Key? key}) : super(key: key);

//   @override
//   State<Language> createState() => _LanguageState();
// }

// enum Languagei { spanish, english, nepali }

// class _LanguageState extends State<Language> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context)!.cardioTracker),
//         actions: [
//           Consumer<LanguageController>(builder: (context, provider, child) {
//             return PopupMenuButton(
//               onSelected: (Languagei item) {
//                 if (item == Languagei.english) {
//                   provider.changeLanguage(Locale('en'));
//                 } else if (item == Languagei.spanish) {
//                   provider.changeLanguage(Locale('es'));
//                 } else if (item == Languagei.nepali) {
//                   provider.changeLanguage(Locale('ne'));
//                 }
//               },
//               itemBuilder: (BuildContext context) =>
//                   <PopupMenuEntry<Languagei>>[
//                 const PopupMenuItem(
//                     value: Languagei.spanish, child: Text('Spanish')),
//                 const PopupMenuItem(
//                     value: Languagei.english, child: Text('English')),
//                 const PopupMenuItem(
//                     value: Languagei.nepali, child: Text('Nepali')),
//               ],
//             );
//           })
//         ],
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 40),
//           Center(
//             child: Container(
//               height: 300,
//               width: 300,
//               decoration: BoxDecoration(
//                   color: Colors.green[200],
//                   borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     AppLocalizations.of(context)!.welcomeback,
//                     style: TextStyle(fontSize: 20, color: Colors.black),
//                   ),
//                   Text(
//                     AppLocalizations.of(context)!.checkyourpulserate,
//                     style: TextStyle(fontSize: 20, color: Colors.black),
//                   ),
//                   Text(
//                     AppLocalizations.of(context)!.viewyourhealthupdate,
//                     style: TextStyle(fontSize: 20, color: Colors.black),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }