
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomerScreenTile extends StatelessWidget {
  final Image image;
  final String name;
  final String id;
  final String street;
  final String streetTwo;
  final String city;
  final String dueAmnt;

  CustomerScreenTile({
    required this.image,
    required this.name,
    required this.id ,
    required this.street,
    required this.streetTwo,
    required this.city,
    required this.dueAmnt,
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(4, 2),
          )]
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: DecorationImage(image: image.image,fit: BoxFit.cover)
                ),
              ),
            ),
            Container(height: 100,width: 1,color: Colors.grey,),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 30,),
                    Icon(CupertinoIcons.phone_circle,color: Colors.indigo[900],),
                    Icon(FontAwesomeIcons.whatsapp,color: CupertinoColors.systemGreen,)
                  ],
                ),
                Text('ID : $id'),
                Row(
                  children: [
                    Text('$street,',),
                    Text('$streetTwo,'),
                    Text(city)
                  ],
                ),
                Row(
                  children: [
                    Text('Due Amount : ',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(dueAmnt,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
