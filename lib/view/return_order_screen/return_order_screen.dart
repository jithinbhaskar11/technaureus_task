import 'package:flutter/material.dart';

class ReturnOrderScreen extends StatelessWidget {
  const ReturnOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.keyboard_return,
          size: 100,
          color: Colors.indigo.withOpacity(0.9),
        ),
      ),
    );
  }
}
