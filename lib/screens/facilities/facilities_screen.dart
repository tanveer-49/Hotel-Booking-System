import 'package:flutter/material.dart';

class FacilitiesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> facilities = [
    {
      "name": "Swimming Pool",
      "desc": "Luxury pool experience",
      "rating": 4.5
    },
    {
      "name": "Gym",
      "desc": "Modern equipment",
      "rating": 4.2
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Facilities")),
      body: ListView.builder(
        itemCount: facilities.length,
        itemBuilder: (_, i) {
          var f = facilities[i];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.hotel, size: 40),
              title: Text(f["name"]),
              subtitle: Text(f["desc"]),
              trailing: Text("⭐ ${f["rating"]}"),
            ),
          );
        },
      ),
    );
  }
}