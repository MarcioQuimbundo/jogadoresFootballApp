import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:jogadores_football_app/src/models/api_models.dart';
class PlayerApiProvider {
  String baseUrl = "https://www.easports.com/fifa/ultimate-team/api/fut/item?";

  Future<List<Players>> fetchPlayersByCountry (String countryId) async{
    final response = await http.get("$baseUrl+counrtyId=$countryId");

    final responseString = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return ApiResult.fromJson(responseString).items;
    } else {
      throw Exception('Failed to load players');
    }
  }
}