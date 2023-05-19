import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/weathermodel/weathermodel.dart';

class WeatherData {
  Future<Weather> getData(var latitude, var longitude) async {
    var uricall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=eb4e07c152cc417a95c121937231705&q=$latitude,$longitude&aqi=no');
    var response = await http.get(uricall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
