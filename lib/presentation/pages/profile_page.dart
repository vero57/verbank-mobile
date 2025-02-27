import 'package:flutter/material.dart';
import '../../widgets/navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F2027),
              Color(0xFF203A43),
              Color(0xFF2C5364),
            ],
          ),
        ),
        child: Stack(
          children: <Widget>[
            const Center(
              child: Text(
                'Ini adalah profil',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
            const NavBar(),
          ],
        ),
      ),
    );
  }
}
