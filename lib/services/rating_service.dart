class RatingService {
  static final RatingService _instance = RatingService._internal();

  factory RatingService() => _instance;

  RatingService._internal();

  List<double> _ratings = [];

  void addRating(double rating) {
    _ratings.add(rating);
  }

  double get averageRating {
    if (_ratings.isEmpty) return 0;
    return _ratings.reduce((a, b) => a + b) / _ratings.length;
  }
}