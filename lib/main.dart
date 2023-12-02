import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:futura_project/auth_gate.dart';
import 'package:futura_project/firebase_options.dart';
import 'package:futura_project/login_or_register.dart';
import 'package:futura_project/login_page.dart';
import 'package:futura_project/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthGate(),
    );
  }
}
