import 'package:communix/screens/configscreens/lang.dart';
import 'package:communix/screens/auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticateCheck extends StatefulWidget {
  const AuthenticateCheck({Key? key}) : super(key: key);

  @override
  _AuthenticateCheckState createState() => _AuthenticateCheckState();
}

class _AuthenticateCheckState extends State<AuthenticateCheck> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return LanguageSelectorPage();
    } else {
      return const LoginScreen();
    }
  }
}
