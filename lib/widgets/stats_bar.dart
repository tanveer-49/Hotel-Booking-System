import 'package:flutter/material.dart';
import '../services/rating_service.dart';

class StatsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double rating = RatingService().averageRating;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text("Rating: ${rating.toStringAsFixed(1)} ⭐"),
          LinearProgressIndicator(
            value: rating / 5,
            minHeight: 8,
          )
        ],
      ),
    );
  }
}