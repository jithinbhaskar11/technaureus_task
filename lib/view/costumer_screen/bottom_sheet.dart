import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technaureus_task/view/costumer_screen/text_feild.dart';

class ShowBottomSheet extends StatelessWidget {
  final textStyle = TextStyle(color: Colors.grey, fontWeight: FontWeight.bold);
  final customerName = TextEditingController();
  final phoneNum = TextEditingController();
  final email = TextEditingController();
  final street = TextEditingController();
  final city = TextEditingController();
  final country = TextEditingController();
  final street2 = TextEditingController();
  final pincode = TextEditingController();
  final state = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              ///title
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add Customer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          CupertinoIcons.clear_circled_solid,
                          color: Colors.indigo[900],
                        ))
                  ],
                ),
              ),

              ///customer name
              Text(
                'Customer Name',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              TxtFeild(textEditingController: customerName),

              ///mobile number
              SizedBox(
                height: 10,
              ),
              Text(
                'Mobile Number',
                style: textStyle,
              ),
              TxtFeild(textEditingController: phoneNum),

              ///email
              SizedBox(
                height: 10,
              ),
              Text(
                'Email',
                style: textStyle,
              ),
              TxtFeild(textEditingController: email),

              ///adress
              SizedBox(
                height: 10,
              ),
              Text(
                'Adress',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///street
                        Text(
                          'Street',
                          style: textStyle,
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          width: 160,
                          child: TxtFeild(textEditingController: street),
                        ),

                        ///city
                        Text(
                          'City',
                          style: textStyle,
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          width: 160,
                          child: TxtFeild(textEditingController: city),
                        ),

                        ///country
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Country',
                              style: textStyle,
                            ),
                          ],
                        ),
                        Container(
                          width: 160,
                          child: TxtFeild(textEditingController: country),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///street
                      Text(
                        'Street 2',
                        style: textStyle,
                        textAlign: TextAlign.start,
                      ),
                      Container(
                        width: 160,
                        child: TxtFeild(textEditingController: street2),
                      ),

                      ///city
                      Text(
                        'City',
                        style: textStyle,
                        textAlign: TextAlign.start,
                      ),
                      Container(
                        width: 160,
                        child: TxtFeild(textEditingController: pincode),
                      ),

                      ///country
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Country',
                            style: textStyle,
                          ),
                        ],
                      ),
                      Container(
                        width: 160,
                        child: TxtFeild(textEditingController: state),
                      ),
                    ],
                  )
                ],
              ),

              ///submit
              Center(
                  child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                shape: StadiumBorder(),
                    color: Colors.indigo[900],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
