import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
        final String currentRoute = GoRouter.of(context).routerDelegate.currentConfiguration.fullPath;

    Widget buildNavItem(IconData icon, String route) {
      final bool isSelected = currentRoute == route;
      return GestureDetector(
        onTap: () {
          context.go(route);
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: isSelected ? Colors.black : Colors.white,
            size: 30.0,
          ),
        ),
      );
    }

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
            buildNavItem(Icons.home, '/'),
            buildNavItem(Icons.credit_card, '/credit'),
            GestureDetector(
              onTap: () {
                // Add your action here
              },
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_upward, color: Colors.white, size: 30.0),
              ),
            ),
            buildNavItem(Icons.person, '/profile'),
            buildNavItem(Icons.grid_view, '/grid'),
          ],
        ),
      ),
    );
  }
}
