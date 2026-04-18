import 'package:flutter/material.dart';

import '../rating/rating_screen.dart';
import '../gallery/gallery_screen.dart';
import '../facilities/facilities_screen.dart';
import '../feedback/feedback_screen.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // 🔥 MODERN GRADIENT HEADER
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 50, bottom: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.tealAccent],
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 35, color: Colors.teal),
                ),
                SizedBox(height: 10),
                Text("User Name",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Text("user@email.com",
                    style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),

          // MENU ITEMS
          Expanded(
            child: ListView(
              children: [
                _tile(context, "Suggestion & Complaint", Icons.feedback,
                    FeedbackScreen()),

                _tile(context, "Gallery", Icons.photo, GalleryScreen()),

                _tile(context, "Hotel Facilities", Icons.hotel,
                    FacilitiesScreen()),

                _tile(context, "Rate this hotel ⭐", Icons.star,
                    RatingScreen()),

                Divider(),

                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _tile(
      BuildContext context, String title, IconData icon, Widget screen) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(title),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => screen));
      },
    );
  }
}