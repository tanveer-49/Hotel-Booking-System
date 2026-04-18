import 'package:flutter/material.dart';
import '../../services/cart_service.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  List<Map<String, dynamic>> menu = [
    {"name": "Burger", "price": 500.0, "category": "Mains"},
    {"name": "Pizza", "price": 800.0, "category": "Mains"},
    {"name": "Tea", "price": 100.0, "category": "Drinks"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Restaurant Menu")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: menu.length,
              itemBuilder: (context, index) {
                var item = menu[index];
                return ListTile(
                  title: Text(item["name"]),
                  subtitle: Text("Rs ${item["price"]}"),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      CartService().addItem(
                          item["name"], item["price"]);
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          ),
          Text(
            "Total: Rs ${CartService().total}",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}