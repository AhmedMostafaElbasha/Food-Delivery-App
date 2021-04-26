import 'package:food_delivery_app/constants/app_image_paths.dart';
import 'package:food_delivery_app/data/data.dart';

final foodItems = [
  Food(
      id: "1",
      name: "Hot Coffee",
      imagePath: AppImagePaths.breakfastJpeg,
      description: "description",
      category: "1",
      price: 22.0,
      discount: 33.5,
      ratings: 99.0,
      ratingRate: 5.0),
  Food(
    id: "1",
    name: "Grilled Chicken",
    imagePath: AppImagePaths.lunch,
    description: "description",
    category: "2",
    price: 12.0,
    discount: 34.5,
    ratings: 69.0,
    ratingRate: 3.5,
  ),
];
