import 'package:flutter/material.dart';

class GradientHeader extends StatelessWidget {
  final VoidCallback onMenuClick;

  GradientHeader({required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.tealAccent],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.hotel, color: Colors.teal),
          ),
          Column(
            children: [
              Text(
                "Hotel_Name",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: onMenuClick,
          )
        ],
      ),
    );
  }
}