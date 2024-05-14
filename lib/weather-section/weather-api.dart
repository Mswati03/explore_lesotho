import 'package:explore_lesotho/weather-section/weather-model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class WeatherAPI{
  String apiKey = "15af09c6ac4347869ca144113241305";
  final String baseUrl = "http://api.weatherapi.com/v1/current.json";

  Future<ApiResponse> getCurrentWeather(String location) async {
    String apiUrl = "$baseUrl?key=$apiKey&q=$location";
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        print("Successs");
        return ApiResponse.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Failed to load weather");
      }
    } catch (e) {
      throw Exception("Failed to load weather");
    }
  }
}