import 'package:ephealth_desafio_flutter/pages/homePage.dart';
import 'package:ephealth_desafio_flutter/pages/loginPage.dart';

class AppRoutes {
  static const loginPage = '/loginPage.dart';
  static const signupPage = '/signUpPage.dart';
  static const homePage = '/homePage.dart';

  static getRoutes() {
    return {
      AppRoutes.loginPage: (context) => const LoginPage(),
      AppRoutes.homePage: (context) => const HomePage(),
    };
  }
}
