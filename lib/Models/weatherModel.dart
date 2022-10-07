//model for making object from data that are received from API
import 'package:flutter/material.dart';

class WeatherModel {
  String date, weatherStateName,icn;
  double temp, mxTemp, minTemp;

  WeatherModel(
      {required this.date,
      required this.weatherStateName,
      required this.icn,
      required this.temp,
      required this.mxTemp,
      required this.minTemp});

//defining named constructor to building an object by data loaded via internet (json data).
  //updating named constructor to factory constructor.
  //why factory constructor?
  //converting the named constructor from normal constructor to constructor that will return a value.
  //return an object that its type is the same as class(of type WeatherModel)
  factory WeatherModel.json(dynamic data) {
    var jsonData = data["forecast"]["forecastday"][0]["day"];

    return WeatherModel(
        date: data['location']['localtime'],
        weatherStateName: jsonData['condition']['text'],
        icn:jsonData['condition']['icon'] ,
        temp: jsonData['avgtemp_c'],
        mxTemp: jsonData['maxtemp_c'],
        minTemp: jsonData['mintemp_c']);
  }
  @override
  String toString() {
    return 'date: $date, weather state:$weatherStateName ';
  }
}
