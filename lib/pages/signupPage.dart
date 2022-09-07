import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

// Color Scheme generated from Material Theme Builder web
// Head to https://material-foundation.github.io/material-theme-builder/#/custom to create

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB2B9),
  onPrimary: Color(0xFF68001C),
  primaryContainer: Color(0xFF90042D),
  onPrimaryContainer: Color(0xFFFFDADD),
  secondary: Color(0xFFE5BDBF),
  onSecondary: Color(0xFF43292B),
  secondaryContainer: Color(0xFF5C3F41),
  onSecondaryContainer: Color(0xFFFFD9DB),
  tertiary: Color(0xFFE8C08E),
  onTertiary: Color(0xFF442B06),
  tertiaryContainer: Color(0xFF5D421B),
  onTertiaryContainer: Color(0xFFFFDDB1),
  error: Color(0xFFFFB4A9),
  errorContainer: Color(0xFF930006),
  onError: Color(0xFF680003),
  onErrorContainer: Color(0xFFFFDAD4),
  background: Color(0xFF201A1A),
  onBackground: Color(0xFFECDFDF),
  surface: Color(0xFF201A1A),
  onSurface: Color(0xFFECDFDF),
  surfaceVariant: Color(0xFF534344),
  onSurfaceVariant: Color(0xFFD7C1C2),
  outline: Color(0xFFA08C8D),
  onInverseSurface: Color(0xFF201A1A),
  inverseSurface: Color(0xFFECDFDF),
  inversePrimary: Color(0xFFB22643),
  shadow: Color(0xFF000000),
);

class _SignupPageState extends State<SignupPage> {
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
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff0d1117),
                  Color(0xff212e40),
                ]),
          ),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Cadastre-se',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Carregando...',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
