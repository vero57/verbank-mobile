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
              Color(0xFF1E3C72),
              Color(0xFF2A5298),
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      const SizedBox(width: 16.0),
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          height: 60.0,
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Username user',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Basic',
                                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Icon(Icons.edit, color: Colors.grey),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    height: 60.0,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.history, color: Colors.grey),
                        SizedBox(width: 16.0),
                        Text(
                          'History',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    height: 60.0,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.exit_to_app, color: Colors.grey),
                        SizedBox(width: 16.0),
                        Text(
                          'Sign Out',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    height: 60.0,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.info, color: Colors.grey),
                        SizedBox(width: 16.0),
                        Text(
                          'App version',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
