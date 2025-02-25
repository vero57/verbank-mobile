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
      body: Stack(
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
      ),
    );
  }
}
