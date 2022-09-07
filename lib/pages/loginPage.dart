// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:ephealth_desafio_flutter/pages/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

// Color Scheme generated from Material Theme Builder web
// Head to https://material-foundation.github.io/material-theme-builder/#/custom to create

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme: darkColorScheme,
          textTheme: GoogleFonts.poppinsTextTheme()
              .apply(displayColor: Colors.white, bodyColor: Colors.white),
          useMaterial3: true),
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffffffff),
                  Color.fromARGB(255, 198, 203, 223),
                ]),
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Image(
                        image: AssetImage(
                          "assets/images/teste.png",
                        ),
                        width: 120,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'A Saúde\num passo à frente',
                  style: TextStyle(
                    fontSize: 38,
                    color: Color(0xff061566),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Uma abordagem definitiva para a saúde, começando agora.​',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff9fa7d4),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                FlatButton(
                  height: 40,
                  color: Color(0xfffe00ab),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () => Get.toNamed('/http'),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Text(
                      "Acessar",
                      style: TextStyle(fontSize: 18),
                    ),
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
