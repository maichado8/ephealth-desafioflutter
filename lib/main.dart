// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ephealth_desafio_flutter/pages/homePage.dart';
import 'package:ephealth_desafio_flutter/pages/loginPage.dart';
import 'package:ephealth_desafio_flutter/pages/repository/http_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());

  FirebaseFirestore db = FirebaseFirestore.instance;

  db.collection("Lista de Formulários").doc("xprDuLvKjq3NZ2mTek7u").set({
    "birthday": "24-04-1994",
    "eligibilityStatus": "eligible",
    "fillStatus": "finished",
    "name": "Sloan Kennedy",
    "sex": "Masculino",
    "uid": "62607efccf773630766ef082",
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => const LoginPage(), children: [
          GetPage(
            name: '/http',
            page: () => HomePage(),
            binding: HttpBindings(),
          )
        ])
      ],
      theme: ThemeData(
          useMaterial3: true, textTheme: GoogleFonts.poppinsTextTheme()),
    );
  }
}
