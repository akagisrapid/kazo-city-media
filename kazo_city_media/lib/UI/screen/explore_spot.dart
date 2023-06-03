import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ExploreSpotModel{
  final String name;
  final String summary;
  final String url;
  final String youtubeUrl;
  final String companyName;
  final String address;
  final String tel;
  final String openingTime;
  final String holiday;
  final GeoPoint placeGeopoint;
  final String note;

  ExploreSpotModel({
    required this.name,
    required this.summary,
    required this.url,
    required this.youtubeUrl,
    required this.companyName,
    required this.address,
    required this.tel,
    required this.openingTime,
    required this.holiday,
    required this.placeGeopoint,
    required this.note,
  });
}

class ExploreSpotItem extends StatelessWidget{
  const ExploreSpotItem({super.key, required this.exploreSpot});
  final ExploreSpotModel exploreSpot;

  @override
  Widget build(BuildContext context) {
  return Row(
      children:[
        Text("${exploreSpot.name}について"),
        Column(
          children: [
          Row(
            children: [
              const Text("会社名"),
              Text(exploreSpot.companyName)
            ],
          ),
          Row(
            children: [
              const Text("所在地"),
              Text(exploreSpot.address)
            ],
          ),
            Row(
              children: [
                const Text("電話番号"),
                Text(exploreSpot.tel)
              ],
            ),
            Row(
              children: [
                const Text("営業時間"),
                Text(exploreSpot.openingTime)
                ],
            ),
            Row(
              children: [
                const Text("定休日"),
                Text(exploreSpot.holiday)
              ],
            ),
            Row(
              children: [
                const Text("Web"),
                Text(exploreSpot.note)
              ],
            )
        ],
        )
      ]
    );
  }
}