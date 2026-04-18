import 'package:flutter/material.dart';

import '../../widgets/gradient_header.dart';
import '../../widgets/stats_bar.dart';
import '../drawer/drawer_screen.dart';

import '../restaurant/restaurant_screen.dart';
import '../booking/booking_screen.dart';
import '../deals/deals_screen.dart';
import '../about/about_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),

      body: Column(
        children: [
          // ✅ FIXED DRAWER ISSUE
          Builder(
            builder: (context) => GradientHeader(
              onMenuClick: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),

          StatsBar(),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildCard(context, "Restaurant", Icons.restaurant),
                _buildCard(context, "Room Booking", Icons.bed),
                _buildCard(context, "Deals", Icons.local_offer),
                _buildCard(context, "About", Icons.info),
              ],
            ),
          )
        ],
      ),
    );
  }


  Widget _buildCard(BuildContext context, String title, IconData icon) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {

          if (title == "Restaurant") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => RestaurantScreen()),
            );
          } else if (title == "Room Booking") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => BookingScreen()),
            );
          } else if (title == "Deals") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DealsScreen()),
            );
          } else if (title == "About") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AboutScreen()),
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.teal),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}