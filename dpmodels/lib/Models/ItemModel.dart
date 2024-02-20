import 'dart:ffi';

class itemModel {
  final String name;
  final String categoryName;
  final String description;
  final String image;
  final Float price;
  final Float sale;
  final List<String> feedback;
  final int count;

  itemModel(
    this.name,
    this.categoryName,
    this.description,
    this.image,
    this.price,
    this.sale,
    this.count, 
    this.feedback,
  );
}
