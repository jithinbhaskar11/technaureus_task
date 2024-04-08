import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:technaureus_task/model/customer_model.dart';

class CustomerController extends ChangeNotifier {
  Map<String, dynamic> decodedData = {};
  CustomerModel? modelObj;
  var isLoading = true;

  Future getData() async {
    final url = Uri.parse('http://143.198.61.94/api/customers/');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      decodedData = jsonDecode(response.body);
      modelObj = CustomerModel.fromJson(decodedData);
      isLoading = false;
      notifyListeners();
    } else {
      return Exception();
    }
  }

  Future addData({
    String? name,
    String? mob,
    String? email,
    String? street,
    String? street2,
    String? city,
    String? pincode,
    String? country,
    String? state,
  }) async {
    final url = Uri.parse('http://143.198.61.94/api/customers/');
    final response = await http.put(url, body: {
      'customer name': name,
      'phone': mob,
      'email': email,
      'street': street,
      'street2': street2,
      'city': city,
      'pincode': pincode,
      'country': country,
      'state': state
    });
    if (response.statusCode == 200) {
      getData();
      return true;
    } else {
      return false;
    }
  }
}
