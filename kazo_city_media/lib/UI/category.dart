import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final String imageUri;
  CategoryModel({required this.name, required this.imageUri});
}

class Category extends StatelessWidget{
  Category({Key? key, required CategoryModel category}) : super(key: key);

  final CategoryModel category = CategoryModel(name: "test", imageUri: 'images/odekake_spot.png');
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        Image.asset(category.imageUri),
        Text(category.name)
      ],
    );
  }
}