import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../card/explore_spot_detail_top_card.dart';

class ExploreSpotModel {
  final String name;
  final String category;
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
    required this.category,
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

class ExploreSpotPage extends StatelessWidget {
  const ExploreSpotPage({super.key, required this.exploreSpot});
  final ExploreSpotModel exploreSpot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(exploreSpot.name),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Row(children: [
              Flexible(
                  child: Column(children: [
                ExploreSpotDetailCardItem(exploreSpot: exploreSpot),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("${exploreSpot.name}について",
                      style: const TextStyle(fontSize: 20)),
                ),
                ListTile(
                    leading: const Text("会社名", style: TextStyle(fontSize: 15)),
                    title: Text(exploreSpot.companyName,
                        style: const TextStyle(fontSize: 15))),
                ListTile(
                    leading: const Text("所在地", style: TextStyle(fontSize: 15)),
                    title: Text(exploreSpot.address,
                        style: const TextStyle(fontSize: 15))),
                ListTile(
                    leading: const Text("電話番号", style: TextStyle(fontSize: 15)),
                    title: Text(exploreSpot.tel,
                        style: const TextStyle(fontSize: 15))),
                ListTile(
                    leading: const Text("営業時間", style: TextStyle(fontSize: 15)),
                    title: Text(exploreSpot.address,
                        style: const TextStyle(fontSize: 15))),
                ListTile(
                    leading: const Text("定休日", style: TextStyle(fontSize: 15)),
                    title: Text(exploreSpot.holiday,
                        style: const TextStyle(fontSize: 15))),
                ListTile(
                  leading: const Text("Web", style: TextStyle(fontSize: 15)),
                  title: Text(exploreSpot.url,
                      style: const TextStyle(fontSize: 15)),
                  onTap: () {
                    // リンク
                  },
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("取材記事", style: TextStyle(fontSize: 20)),
                ),
                Text(exploreSpot.note),
              ]))
            ])));
  }
}
