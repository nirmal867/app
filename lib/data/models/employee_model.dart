// To parse this JSON data, do
//
//     final employeeModel = employeeModelFromJson(jsonString);

import 'dart:convert';

import 'package:dashboard_app/domain/entities/employee.dart';

EmployeeModel employeeModelFromJson(String str) =>
    EmployeeModel.fromJson(json.decode(str));

String employeeModelToJson(EmployeeModel data) => json.encode(data.toJson());

class EmployeeModel extends Employee {
  EmployeeModel({
    this.employeeName,
    this.employeeDesignation,
    this.employeePhoto,
    this.employeePhone,
    this.employeeEmail,
    this.remarks,
  });

  String employeeName;
  String employeeDesignation;
  String employeePhoto;
  String employeePhone;
  String employeeEmail;
  dynamic remarks;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
        employeeName: json["employee_name"],
        employeeDesignation: json["employee_designation"],
        employeePhoto: json["employee_photo"],
        employeePhone: json["employee_phone"],
        employeeEmail: json["employee_email"],
        remarks: json["remarks"],
      );

  Map<String, dynamic> toJson() => {
        "employee_name": employeeName,
        "employee_designation": employeeDesignation,
        "employee_photo": employeePhoto,
        "employee_phone": employeePhone,
        "employee_email": employeeEmail,
        "remarks": remarks,
      };
}
