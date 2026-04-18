import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  final List<String> images = [
    "https://picsum.photos/200",
    "https://picsum.photos/201",
    "https://picsum.photos/202",
    "https://picsum.photos/203",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gallery")),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Card(
            child: Image.network(images[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}