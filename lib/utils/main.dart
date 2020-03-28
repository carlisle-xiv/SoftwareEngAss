import 'package:flutter/material.dart';
import 'package:gods_eye/screens/login_screen.dart';
import 'package:gods_eye/screens/sign_up_screen.dart';
import 'screens/main_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        MainNav.id: (context) => MainNav(),
      },
      theme: ThemeData(
        fontFamily: 'Gilroy',
      ),
    );
  }
}
