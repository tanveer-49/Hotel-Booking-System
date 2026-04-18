import 'package:flutter/material.dart';
import '../../services/booking_service.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();
  String roomType = "Standard";

  final bookingService = BookingService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Room Booking")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField(
                value: roomType,
                items: ["Standard", "Deluxe", "Suite", "Family"]
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
                    .toList(),
                onChanged: (value) {
                  roomType = value!;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  bool success =
                  bookingService.bookRoom(roomType);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(success
                          ? "Booking Successful"
                          : "Room Not Available"),
                    ),
                  );
                },
                child: Text("Book"),
              )
            ],
          ),
        ),
      ),
    );
  }
}