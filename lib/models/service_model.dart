class ServiceModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final String category;
  final List<String> images;
  final double rating;
  final int reviews;
  final List<String> specifications;
  
  ServiceModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.images,
    required this.rating,
    required this.reviews,
    required this.specifications,
  });
}

class CategoryModel {
  final String id;
  final String name;
  final String icon;
  final int serviceCount;
  
  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.serviceCount,
  });
}
