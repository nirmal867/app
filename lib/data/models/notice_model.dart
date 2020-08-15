// To parse this JSON data, do
//
//     final noticeModel = noticeModelFromJson(jsonString);

import 'dart:convert';

import 'package:dashboard_app/domain/entities/notice.dart';

NoticeModel noticeModelFromJson(String str) =>
    NoticeModel.fromJson(json.decode(str));

String noticeModelToJson(NoticeModel data) => json.encode(data.toJson());

class NoticeModel extends Notice {
  NoticeModel({
    this.title,
    this.date,
    this.noticePhoto,
    this.description,
  });

  String title;
  DateTime date;
  String noticePhoto;
  dynamic description;

  factory NoticeModel.fromJson(Map<String, dynamic> json) => NoticeModel(
        title: json["title"],
        date: DateTime.parse(json["date"]),
        noticePhoto: json["notice_photo"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "notice_photo": noticePhoto,
        "description": description,
      };
}
