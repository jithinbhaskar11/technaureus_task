import 'package:flutter/material.dart';

class TxtFeild extends StatelessWidget {

  final TextEditingController textEditingController;

  TxtFeild({
    required this.textEditingController
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:40 ,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2)
          )
        ),
      ),
    );
  }
}
