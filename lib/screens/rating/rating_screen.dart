import 'package:flutter/material.dart';
import '../../services/rating_service.dart';

class RatingScreen extends StatefulWidget {
  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double selected = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rate Hotel")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: selected,
            min: 1,
            max: 5,
            divisions: 4,
            label: selected.toString(),
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              RatingService().addRating(selected);
              Navigator.pop(context);
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}