import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final String imageUri;
  CategoryModel({required this.name, required this.imageUri});
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(category.imageUri),
        Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: FittedBox(
                fit: BoxFit.contain,
                child: Text(category.name,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))))
      ],
    );
  }
}
