// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  int? errorCode;
  List<Datum>? data;
  String? message;

  Products({
    this.errorCode,
    this.data,
    this.message,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    errorCode: json["error_code"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "error_code": errorCode,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
  };
}

class Datum {
  int? id;
  String? name;
  String? image;
  int? price;
  DateTime? createdDate;
  String? createdTime;
  DateTime? modifiedDate;
  String? modifiedTime;
  bool? flag;

  Datum({
    this.id,
    this.name,
    this.image,
    this.price,
    this.createdDate,
    this.createdTime,
    this.modifiedDate,
    this.modifiedTime,
    this.flag,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    price: json["price"],
    createdDate: json["created_date"] == null ? null : DateTime.parse(json["created_date"]),
    createdTime: json["created_time"],
    modifiedDate: json["modified_date"] == null ? null : DateTime.parse(json["modified_date"]),
    modifiedTime: json["modified_time"],
    flag: json["flag"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "price": price,
    "created_date": "${createdDate!.year.toString().padLeft(4, '0')}-${createdDate!.month.toString().padLeft(2, '0')}-${createdDate!.day.toString().padLeft(2, '0')}",
    "created_time": createdTime,
    "modified_date": "${modifiedDate!.year.toString().padLeft(4, '0')}-${modifiedDate!.month.toString().padLeft(2, '0')}-${modifiedDate!.day.toString().padLeft(2, '0')}",
    "modified_time": modifiedTime,
    "flag": flag,
  };
}
