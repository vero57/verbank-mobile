import 'package:flutter/material.dart';

class TransactionContainer extends StatelessWidget {
  const TransactionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        width: screenWidth - 32.0,
        decoration: BoxDecoration(
          color: const Color(0xFF3A506B).withOpacity(0.9),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Transaction',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              width: screenWidth - 40.0,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFF5C6B73).withOpacity(0.9),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Nama',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Hari',
                        style: TextStyle(fontSize: 14.0, color: Colors.white70),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    'Rp. 100.000',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
