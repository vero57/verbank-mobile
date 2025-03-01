import 'package:flutter/material.dart';
import '../../widgets/navbar.dart';
import '../../widgets/appbar.dart';
import '../../widgets/card.dart';
import '../../widgets/transaction.dart';

class BankHomePage extends StatelessWidget {
  const BankHomePage({super.key});

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
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const CustomAppBar(),
                    const SizedBox(height: 1.0),
                    const CustomCard(),
                    Expanded(child: const TransactionContainer()),
                  ],
                ),
                const NavBar(),
              ],
            );
          },
        ),
      ),
    );
  }
}
