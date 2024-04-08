import 'package:flutter/material.dart';

class HomeScreenTile extends StatelessWidget {
  final tapResult;
  final IconData icon;
  final String title;

  HomeScreenTile(
      {required this.tapResult, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: tapResult,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(4, 2),
                )
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 60,
                color: Colors.indigo[900],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
