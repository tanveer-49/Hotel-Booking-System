import 'package:flutter/material.dart';

class DealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Special Deals")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Weekend Offer"),
            subtitle: Text("2 Nights + Free Breakfast"),
            trailing: Text("Rs 5000"),
          ),
          ListTile(
            title: Text("Family Package"),
            subtitle: Text("3 Nights + Dinner"),
            trailing: Text("Rs 9000"),
          ),
        ],
      ),
    );
  }
}