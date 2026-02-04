import 'package:flutter/material.dart';
import 'package:testing_app_signin/auth/auth_service.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _authService = AuthService();

  Future<void> _logout() async {
    await AuthService.signOut();

    if (!mounted) return;

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        leading: IconButton(icon: const Icon(Icons.logout), onPressed: _logout),
      ),
      body: const Center(
        child: Text("You are logged in", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
