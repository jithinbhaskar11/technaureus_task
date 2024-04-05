import 'package:flutter/material.dart';
import 'package:technaureus_task/view/bottom_navigation_bar/bottom_navigation_bar.dart';

class NewOrderScreen extends StatelessWidget {
  const NewOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.add_box_outlined,size: 100,color: Colors.indigo.withOpacity(0.9),
        ),
      ),
    );
  }
}
