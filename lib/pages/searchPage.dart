import 'package:flutter/material.dart';
import 'package:weather/Models/weatherModel.dart';
import 'package:weather/services/weatherService.dart';

class SearchPage extends StatelessWidget {
  static const String route_name = 'search_screen';

  String? cityName; //storing input from the user

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext cntx) {
            return IconButton(
                onPressed: () {
                  Navigator.pop(cntx);
                },
                icon: Icon(Icons.arrow_back_ios));
          },
        ),
        title: const Text(
          'Search A City',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (data) async{
              cityName = data;
              WeatherService service = WeatherService();
              // service.getWeather(cityName: cityName!);
              WeatherModel weather=await service.getWeather(cityName: cityName!);
              // print(weather);
            },
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                suffixIcon: Icon(Icons.search),
                hintText: 'Enter A City ',
                label: Text('Search'),
                border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}
