import 'package:flutter/material.dart';
import 'package:weather_app/widget/city_choose.dart';
import 'package:weather_app/widget/end_update.dart';
import 'package:weather_app/widget/location.dart';
import 'package:weather_app/widget/max_and_min_heat.dart';
import 'package:weather_app/widget/weather_image.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    String userChooseCity = "Ankara";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        actions: [
          IconButton(
              onPressed: () async {
                userChooseCity = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CityChooseWidget()));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: LocationWidget(
                chooseCity: userChooseCity,
              )),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: EndUpdateWidget()),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: WeatherImageWidget()),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Center(child: MaxAndMinHeatWidget()),
            )
          ],
        ),
      ),
    );
  }
}
