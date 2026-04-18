import 'package:flutter/material.dart';
import '../../services/rating_service.dart';

class RatingScreen extends StatefulWidget {
  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double rating = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rate Hotel")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Give Rating"),

          Slider(
            value: rating,
            min: 1,
            max: 5,
            divisions: 4,
            label: rating.toString(),
            onChanged: (value) {
              setState(() => rating = value);
            },
          ),

          ElevatedButton(
            onPressed: () {
              RatingService.addRating(rating);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Rating Submitted")),
              );

              Navigator.pop(context);
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}