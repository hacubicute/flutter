import 'package:flutter/material.dart';
import 'package:talent/Card.dart';

class BankProfile extends StatefulWidget {
  const BankProfile({super.key});

  @override
  State<BankProfile> createState() => _BankProfileState();
}

class _BankProfileState extends State<BankProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bank"),
      ), 
         body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            FlutterCard(),
            FlutterCard(),
          ],
         ),
    );
  }
}