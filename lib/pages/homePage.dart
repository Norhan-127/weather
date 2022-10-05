import 'package:flutter/material.dart';
import 'package:weather/pages/searchPage.dart';

class HomePage extends StatelessWidget {
  static const String route_name='homePage';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(SearchPage.route_name);
              }, icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

