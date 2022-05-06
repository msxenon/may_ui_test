class ProductEntity {
  const ProductEntity({
    required this.category,
    required this.title,
    required this.price,
    this.rating = 5,
    this.isFavorited = false,
    this.imageUrl = 'https://source.unsplash.com/random/300x300/?flower',
    this.discount,
  });
  final String category;
  final String title;
  final bool isFavorited;
  final double price;
  final double? discount;
  final int rating;
  final String imageUrl;
}
