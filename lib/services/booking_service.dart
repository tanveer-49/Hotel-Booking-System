class BookingService {
  Map<String, int> roomAvailability = {
    "Standard": 10,
    "Deluxe": 10,
    "Suite": 5,
    "Family": 5,
  };

  bool bookRoom(String type) {
    if (roomAvailability[type]! > 0) {
      roomAvailability[type] =
          roomAvailability[type]! - 1;
      return true;
    }
    return false;
  }
}