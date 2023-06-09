import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kazo_city_media/UI/card/latest_news_carousel_card_item.dart';
import 'package:kazo_city_media/UI/screen/explore_spot_card.dart';

import 'explore_spot_detail_card.dart';

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
        body: Center(
            child: Row(children: [
          Flexible(
              child: Column(children: [
            ExploreSpotDetailCardItem(exploreSpot: exploreSpot),
          ]))
        ])));
  }
}
