import 'package:flutter/material.dart';
import '../services/rating_service.dart';

class StatsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<double>>(
      valueListenable: RatingService.ratings,
      builder: (context, ratings, _) {
        double avg = RatingService.average;

        return Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: Colors.grey.shade400),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Rating: ${avg.toStringAsFixed(1)}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                LinearProgressIndicator(value: avg / 5),
              ],
            ),
          ),
        );
      },
    );
  }
}