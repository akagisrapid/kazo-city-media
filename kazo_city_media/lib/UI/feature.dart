import 'package:flutter/material.dart';

class FeatureModel {
  final String title;
  final String imageUri;
  final String name;
  final String belonging;
  final String comment;
  final Color backgroundColor;
  FeatureModel({required this.title, required this.imageUri, required this.name, required this.belonging, required this.comment, required this.backgroundColor});
}

class FeatureItem extends StatelessWidget{
  const FeatureItem({super.key,required this.feature});
  final FeatureModel feature;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(feature.imageUri), 
        Positioned(
          top: 10,
          left: 10,
          right: 10,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                const Text(
                  "FEATURE",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white)),
                Text(
              feature.title,
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
            ),
              ]
          )
        )
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: FittedBox(
            fit: BoxFit.contain,
            child: 
            Container(
  decoration: BoxDecoration(
    color: const Color(0xFF111111), // 背景色を指定
    borderRadius: BorderRadius.circular(10), // 角丸の半径を指定
  ),
  child: 
  Column(
  crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
    "${feature.belonging} ${feature.name}",
    textAlign: TextAlign.right
    ,
    style: const TextStyle(
      color: Colors.white, // テキストの色を指定
    ),
    ),
       Text(
        feature.comment,
        style: const TextStyle(
          color: Colors.white, 
        ),
    )
    ]
  ),
),
          )
        )
      ],
    );
  }
}