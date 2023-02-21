import 'package:flutter/material.dart';

class FlutterCard extends StatelessWidget {
  const FlutterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Color.fromRGBO(192, 57, 43, 30),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}