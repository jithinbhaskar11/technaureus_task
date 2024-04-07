import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:technaureus_task/model/customer_model.dart';


class CustomerController extends ChangeNotifier{
  Map <String,dynamic> decodedData={};
  CustomerModel? modelObj;
  var isLoading=true;

  Future getData()async{
    final url=Uri.parse('http://143.198.61.94/api/customers/');
    final response= await http.get(url);
    if(response.statusCode==200){
    decodedData=jsonDecode(response.body);
    modelObj=CustomerModel.fromJson(decodedData);
    isLoading=false;
    notifyListeners();
    }
    else {
      return Exception();
    }
  }
}