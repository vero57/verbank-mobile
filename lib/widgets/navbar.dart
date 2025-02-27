import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: 16.0,
      left: screenWidth * 0.05,
      right: screenWidth * 0.05,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        decoration: BoxDecoration(
          color: const Color(0xFF161B17),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                context.go('/');
              },
              child: const Icon(Icons.home, color: Colors.white, size: 30.0),
            ),
            const Icon(Icons.credit_card, color: Colors.white, size: 30.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_upward, color: Colors.white, size: 30.0),
            ),
            GestureDetector(
              onTap: () {
                context.go('/profile');
              },
              child: const Icon(Icons.person, color: Colors.white, size: 30.0),
            ),
            const Icon(Icons.grid_view, color: Colors.white, size: 30.0),
          ],
        ),
      ),
    );
  }
}
