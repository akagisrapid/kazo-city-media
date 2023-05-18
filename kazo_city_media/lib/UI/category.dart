import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final String imageUri;
  CategoryModel({required this.name, required this.imageUri});
}

class CategoryItem extends StatelessWidget{
  const CategoryItem({super.key,required this.category});
  final CategoryModel category;
  
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        Image.asset(category.imageUri),
        Text(category.name)
      ],
    );
  }
}