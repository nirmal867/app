// To parse this JSON data, do
//
//     final officeModel = officeModelFromJson(jsonString);

import 'dart:convert';

import 'package:dashboard_app/domain/entities/office.dart';

OfficeModel officeModelFromJson(String str) =>
    OfficeModel.fromJson(json.decode(str));

String officeModelToJson(OfficeModel data) => json.encode(data.toJson());

class OfficeModel extends Office {
  OfficeModel({
    this.government,
    this.ministry,
    this.directorate,
    this.address,
    this.email,
    this.phone,
    this.logo,
    this.flag,
  });

  String government;
  String ministry;
  String directorate;
  String address;
  String email;
  String phone;
  String logo;
  String flag;

  factory OfficeModel.fromJson(Map<String, dynamic> json) => OfficeModel(
        government: json["government"],
        ministry: json["ministry"],
        directorate: json["directorate"],
        address: json["address"],
        email: json["email"],
        phone: json["phone"],
        logo: json["logo"],
        flag: json["flag"],
      );

  Map<String, dynamic> toJson() => {
        "government": government,
        "ministry": ministry,
        "directorate": directorate,
        "address": address,
        "email": email,
        "phone": phone,
        "logo": logo,
        "flag": flag,
      };
}
