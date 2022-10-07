//class to load data via internet
import 'dart:convert';

import 'package:http/http.dart' as http;//http package:A composable, Future-based library for making HTTP requests.

class WeatherService {
  //function for getting the weather of city from API
  void getWeather({required String cityName}) async {
    //Future<Response> get(Uri url, {Map<String, String>? headers})
    //base url variable
    String baseUrl = 'http://api.weatherapi.com/v1';
    //api key variable
    String apiKey='578ded91b30d4e8ab1d211653220510';
    //object from Uri, Uri url
    Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response response = await http.get(url);
    // decoding the response(data)
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
  }
}
// 1-call(get request) ---> response
//calling via http package
//now our request completed
//the response is future response
//decoding the response(data)
//base url
//searching on specific city via query using cityName parameter in url --->updating url query
//api key --->updating url api key