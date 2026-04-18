import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  Widget buildCard(String title, String desc) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(title),
        subtitle: Text(desc),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Hotel")),
      body: ListView(
        children: [
          buildCard("Standard Room", "Best for 1-2 persons"),
          buildCard("Deluxe Room", "More comfortable"),
          buildCard("Suite Room", "Luxury stay"),
          buildCard("Family Room", "Best for families"),
        ],
      ),
    );
  }
}