// To parse this JSON data, do
//
//     final videoModel = videoModelFromJson(jsonString);

import 'dart:convert';

import 'package:dashboard_app/domain/entities/video.dart';

VideoModel videoModelFromJson(String str) =>
    VideoModel.fromJson(json.decode(str));

String videoModelToJson(VideoModel data) => json.encode(data.toJson());

class VideoModel extends Video {
  VideoModel({
    this.videoTitle,
    this.video,
  });

  String videoTitle;
  String video;

  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
        videoTitle: json["video_title"],
        video: json["video"],
      );

  Map<String, dynamic> toJson() => {
        "video_title": videoTitle,
        "video": video,
      };
}
