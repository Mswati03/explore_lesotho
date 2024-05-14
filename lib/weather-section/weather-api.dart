import 'package:explore_lesotho/weather-section/weather-model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class WeatherAPI{
  final String api_key = "http://api.weatherapi.com/v1/current.json";

 Future<ApiResponse> getCurrentWeather(String location) async {
    String api_url = "$api_key?key=apiKey&q=$location";

    try
    {
      final response = await http.get(Uri.parse(api_url));
      if(response.statusCode==200)
      {
      print(response.body);
      return ApiResponse.fromJson(jsonDecode(response.body));
      }
      else{
        throw Exception("Failed to Load weather");
      }
    }
    catch(e){
      throw Exception("Failed to Load weather");
    }


  }
}