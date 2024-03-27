class CartItem {
  final int id;
  final String title;
  final String thumbnail;
  final double price;
  late int buyQty;

  CartItem({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.price,
    required this.buyQty,
  });
}