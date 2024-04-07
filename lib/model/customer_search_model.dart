// To parse this JSON data, do
//
//     final customerSearchModel = customerSearchModelFromJson(jsonString);

import 'dart:convert';

CustomerSearchModel customerSearchModelFromJson(String str) => CustomerSearchModel.fromJson(json.decode(str));

String customerSearchModelToJson(CustomerSearchModel data) => json.encode(data.toJson());

class CustomerSearchModel {
  int? errorCode;
  List<dynamic>? data;
  String? message;

  CustomerSearchModel({
    this.errorCode,
    this.data,
    this.message,
  });

  factory CustomerSearchModel.fromJson(Map<String, dynamic> json) => CustomerSearchModel(
    errorCode: json["error_code"],
    data: json["data"] == null ? [] : List<dynamic>.from(json["data"]!.map((x) => x)),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "error_code": errorCode,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
    "message": message,
  };
}
