import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technaureus_task/view/costumer_screen/widgets/text_feild.dart';

import '../../../controller/customer_contrroller.dart';

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

  CustomerController customerController = CustomerController();

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
                            Row(
                              children: [
                                Text(
                                  'Country',
                                  style: textStyle,
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                )
                              ],
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

                      ///pimcode
                      Text(
                        'Pin Code',
                        style: textStyle,
                        textAlign: TextAlign.start,
                      ),
                      Container(
                        width: 160,
                        child: TxtFeild(textEditingController: pincode),
                      ),

                      ///state
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'State',
                                style: textStyle,
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              )
                            ],
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
                onPressed: () {
                  customerController.addData(
                    name: customerName.text,
                    mob: phoneNum.text,
                    email: email.text,
                    street: street.text,
                    street2: street2.text,
                    city: city.text,
                    pincode: pincode.text,
                    state: state.text,
                    country: country.text,
                  );
                  customerName.clear();
                  phoneNum.clear();
                  email.clear();
                  street.clear();
                  street2.clear();
                  city.clear();
                  pincode.clear();
                  state.clear();
                  country.clear();
                  Navigator.pop(context);
                },
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
