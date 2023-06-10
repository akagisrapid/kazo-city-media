import 'package:flutter/material.dart';
import 'package:kazo_city_media/UI/screen/explore_spot_list_page.dart';

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
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.imageUri), fit: BoxFit.cover)),
        alignment: AlignmentDirectional.center,
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ExploreSpotListPage(categoryName: category.name)));
            },
            child: Container(
                height: 200,
                width: 150,
                alignment: Alignment.bottomCenter,
                child: Text(
                  category.name,
                  style: const TextStyle(color: Colors.white),
                ))));
  }
}
