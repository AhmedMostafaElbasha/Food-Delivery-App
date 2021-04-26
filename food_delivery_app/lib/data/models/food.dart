import 'package:flutter/material.dart';

class Food {
  final String id;
  final String name;
  final String imagePath;
  final String description;
  final String category;
  final double price;
  final double discount;
  final double ratings;
  final double ratingRate;

  Food({
    @required this.id,
    @required this.name,
    @required this.imagePath,
    @required this.description,
    @required this.category,
    @required this.price,
    @required this.discount,
    @required this.ratings,
    @required this.ratingRate,
  });
}
