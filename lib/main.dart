// @dart=2.9
import 'package:ephealth_desafio_flutter/pages/homePage.dart';
import 'package:ephealth_desafio_flutter/pages/loginPage.dart';
import 'package:ephealth_desafio_flutter/pages/repository/http_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/routes.dart';

void main() {
  runApp(const MyApp());
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
