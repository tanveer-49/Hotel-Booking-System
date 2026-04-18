import 'package:flutter/material.dart';

class RatingService {

  static ValueNotifier<List<double>> ratings =
  ValueNotifier<List<double>>([]);

  static void addRating(double rating) {
    ratings.value = [...ratings.value, rating];
  }


  static double get average {
    if (ratings.value.isEmpty) return 0;
    return ratings.value.reduce((a, b) => a + b) / ratings.value.length;
  }
}