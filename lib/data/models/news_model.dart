// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

import 'package:dashboard_app/domain/entities/news.dart';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel extends News {
  NewsModel({
    this.newsTitle,
    this.newsDate,
  });

  String newsTitle;
  DateTime newsDate;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        newsTitle: json["news_title"],
        newsDate: DateTime.parse(json["news_date"]),
      );

  Map<String, dynamic> toJson() => {
        "news_title": newsTitle,
        "news_date":
            "${newsDate.year.toString().padLeft(4, '0')}-${newsDate.month.toString().padLeft(2, '0')}-${newsDate.day.toString().padLeft(2, '0')}",
      };
}
