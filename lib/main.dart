import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testing_app_signin/firebase_options.dart';
import 'package:testing_app_signin/pages/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signin App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
