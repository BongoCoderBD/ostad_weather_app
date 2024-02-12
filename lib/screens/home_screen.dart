import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Info App"),
      ),
      body: ListView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) {
          var data = weatherData[index];
          return Card(
            color: Colors.white60,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(3)),
            child: buildListTile(data),
          );
        },
      ),
    );
  }

  ListTile buildListTile(Map<String, dynamic> data) {
    return ListTile(
      title: Text("City: ${data["city"]}"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Temperature: ${data['temperature']}°C"),
          Text("Condition: ${data['condition']}"),
          Text("Humidity: ${data['humidity']}%"),
          Text("Wind Speed: ${data['windSpeed']} km/h"),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> weatherData = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    },
  ];
}
