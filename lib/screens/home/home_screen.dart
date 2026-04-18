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
          // HEADER
          Builder(
            builder: (context) => GradientHeader(
              onMenuClick: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),

          // STATS
          StatsBar(),

          // CARDS
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
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

  //
  Widget _buildCard(BuildContext context, String title, IconData icon) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.teal.shade50,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(2, 4),
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
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
              // ICON CONTAINER
              Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal.withOpacity(0.1),
                ),
                child: Icon(
                  icon,
                  size: 38,
                  color: Colors.teal,
                ),
              ),

              SizedBox(height: 12),

              // TITLE
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}