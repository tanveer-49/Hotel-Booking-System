import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  String type = "Suggestion";
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Feedback")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButtonFormField(
              value: type,
              items: ["Suggestion", "Complaint", "Compliment"]
                  .map((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ))
                  .toList(),
              onChanged: (value) {
                type = value!;
              },
            ),

            TextField(
              controller: controller,
              decoration:
              InputDecoration(labelText: "Your message"),
              maxLines: 4,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Submitted successfully")),
                );
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}