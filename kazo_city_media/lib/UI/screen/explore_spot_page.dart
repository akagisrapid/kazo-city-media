import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'explore_spot.dart';

class ExploreSpotListPage extends StatelessWidget{
  const ExploreSpotListPage({super.key});

  @override
  Widget build(BuildContext context) {
     var exploreSpots = [
    ExploreSpotModel(name: "ふわとそう", category:"exploreSpot", summary: "lorem ipsum", url: "https://www.example.com", youtubeUrl: "", companyName: "（かぶ）ふわとそう", address: "aa", tel: "03-0000-0000", openingTime: "月曜〜土曜 10:00~17:00", holiday: "日曜", placeGeopoint: const GeoPoint(35.0, 135.0), note: "hogehogehogehoge"),
     ];
    var spotItems = exploreSpots.map((spot) => ExploreSpotItem(exploreSpot: spot)).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("スポット一覧"),
      ),
      body: Column(
        children: [
          Text("hoge"),
          Expanded(child: GridView.count(crossAxisCount: 2, children: spotItems))
        ],
      ),
    );
  }
}