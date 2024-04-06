import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:technaureus_task/model/product_model.dart';

class ProductController extends ChangeNotifier{
  Map <String,dynamic> decodedData={};
  Products? modelObj;

  Future getData()async{
    final url=Uri.parse('http://143.198.61.94/api/products/');
    final response= await http.get(url);
    decodedData=jsonDecode(response.body);
    modelObj=Products.fromJson(decodedData);
    notifyListeners();

  }
}