import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 8.0),
          child: Text(
            'Account',
            style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          padding: const EdgeInsets.all(16.0),
          width: screenWidth - 32.0,
          height: screenWidth * 0.6,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/card.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Text(
                  'Main Wallet (IDR)',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  '1,000,000,000',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0, left: 8.0),
                child: Text(
                  'Indonesian Rupiah',
                  style: TextStyle(fontSize: 14.0, color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
