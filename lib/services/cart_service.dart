class CartService {
  static final CartService _instance = CartService._internal();

  factory CartService() => _instance;

  CartService._internal();

  List<Map<String, dynamic>> cart = [];

  void addItem(String name, double price) {
    cart.add({"name": name, "price": price});
  }

  double get total {
    return cart.fold(0, (sum, item) => sum + item["price"]);
  }
}