import 'package:flutter/material.dart';
import 'package:technaureus_task/view/costumer_screen/customer_screen_tile.dart';

class CustomerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return CustomerScreenTile(
              image: Image.network(
                  'https://media.istockphoto.com/id/495878092/photo/red-apple.jpg?s=612x612&w=is&k=20&c=Sk_yWeuwtke-b-CSX6X9xs65e4PU2SstgabsCTXYXU8='),
              name: 'Nesto supermarket',
              id: '5158555',
              location: 'Kakkanad,ernakulam,keraka',
              dueAmnt: '500');
        },
      ),
    );
  }
}