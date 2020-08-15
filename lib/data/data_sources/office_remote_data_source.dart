// var decodedData = jsonDecode(response.body);
// var jsonArray = decodedData['data'] as List;
// categoryList = jsonArray
//     .map<ModelCategory>((json) => ModelCategory.fromJson(json))
//     .toList();

import 'dart:convert';

import 'package:dashboard_app/data/models/office_model.dart';
import 'package:http/http.dart' as http;

class OfficeRemoteDataSource {
  final http.Client client;

  OfficeRemoteDataSource(this.client);

  Future<OfficeModel> getOffice() async {
    final response =
        await client.get('https://ninjainfosys.com/digitalTest/api/office');

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      final usefulData = decodedData['data'];
      final office = OfficeModel.fromJson(usefulData);
      return office;
    } else
      throw Exception();
  }
}
