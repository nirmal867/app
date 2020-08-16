import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/error/exception.dart';
import '../models/employee_model.dart';
import '../models/news_model.dart';
import '../models/notice_model.dart';
import '../models/office_model.dart';
import '../models/video_model.dart';

abstract class DashboardRemoteDataSource {
  Future<OfficeModel> getOffice();
  Future<List<NoticeModel>> getNotice();
  Future<List<VideoModel>> getVideo();
  Future<List<NewsModel>> getNews();
  Future<List<EmployeeModel>> getEmployee();
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final http.Client client;

  DashboardRemoteDataSourceImpl(this.client);

  @override
  Future<OfficeModel> getOffice() async {
    final response =
        await client.get('https://ninjainfosys.com/digitalTest/api/office');

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      final usefulData = decodedData['data'];
      final office = OfficeModel.fromJson(usefulData);
      return office;
    } else
      throw ServerException();
  }

  @override
  Future<List<NoticeModel>> getNotice() async {
    final response =
        await client.get('https://ninjainfosys.com/digitalTest/api/notice');

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      final jsonArray = decodedData['data'] as List;
      final noticeList = jsonArray
          .map<NoticeModel>((json) => NoticeModel.fromJson(json))
          .toList();
      return noticeList;
    } else
      throw ServerException();
  }

  @override
  Future<List<EmployeeModel>> getEmployee() async {
    final response =
        await client.get('https://ninjainfosys.com/digitalTest/api/employee');

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      final jsonArray = decodedData['data'] as List;
      final employeeList = jsonArray
          .map<EmployeeModel>((json) => EmployeeModel.fromJson(json))
          .toList();
      return employeeList;
    } else
      throw ServerException();
  }

  @override
  Future<List<NewsModel>> getNews() async {
    final response =
        await client.get('https://ninjainfosys.com/digitalTest/api/news');

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      final jsonArray = decodedData['data'] as List;
      final newsList =
          jsonArray.map<NewsModel>((json) => NewsModel.fromJson(json)).toList();
      return newsList;
    } else
      throw ServerException();
  }

  @override
  Future<List<VideoModel>> getVideo() async {
    final response =
        await client.get('https://ninjainfosys.com/digitalTest/api/video');

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      final jsonArray = decodedData['data'] as List;
      final videoList = jsonArray
          .map<VideoModel>((json) => VideoModel.fromJson(json))
          .toList();
      return videoList;
    } else
      throw ServerException();
  }
}
