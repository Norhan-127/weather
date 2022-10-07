import 'package:flutter/material.dart';
import 'package:weather/pages/homePage.dart';
import 'package:weather/pages/searchPage.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.route_name: (context) => HomePage(),
        SearchPage.route_name: (context) => SearchPage(),
      },
      initialRoute: HomePage.route_name,
    );
  }
}
