// ignore_for_file: deprecated_member_use
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
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
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: const AssetImage(
                          "assets/images/teste.png",
                        ),
                        width: 120.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'A Saúde\num passo à frente',
                  style: TextStyle(
                    fontSize: 38.sp,
                    color: Color(0xff061566),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Uma abordagem definitiva para a saúde, começando agora.​',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xff9fa7d4),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                FlatButton(
                  height: 40.h,
                  color: const Color(0xfffe00ab),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () => Get.toNamed('/http'),
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.w, right: 50.w),
                    child: Text(
                      "Acessar",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
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
