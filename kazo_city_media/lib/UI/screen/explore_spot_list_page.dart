import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kazo_city_media/UI/card/explore_spot_list_card.dart';

import '../card/explore_spot_top_card.dart';
import 'explore_spot_page.dart';

class ExploreSpotListPage extends StatelessWidget {

  const ExploreSpotListPage({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    var exploreSpots = [
      ExploreSpotModel(
          name: "不破塗装株式会社",
          category: "exploreSpot",
          summary:
              "不破塗装株式会社は\n所沢市を中心に、屋根・外壁の塗装はもちろん、\nコーキング工事やリフォーム工事も行う職人集団です。\n「真面目な職人さんばかりだね」と言われます。",
          url: "https://www.example.com",
          youtubeUrl: "",
          companyName: "（かぶ）ふわとそう",
          address: "aa",
          tel: "03-0000-0000",
          openingTime: "月曜〜土曜 10:00~17:00",
          holiday: "日曜",
          placeGeopoint: const GeoPoint(35.0, 135.0),
          note: "hogehogehogehoge"),
      ExploreSpotModel(
          name: "加須未来館",
          category: "exploreSpot",
          summary: "lorem ipsum",
          url:
              "https://www.city.kazo.lg.jp/soshiki/bunka_gakushu/kazomiraikan/index.html",
          youtubeUrl: "",
          companyName: "加須未来館",
          address: "〒347-0002 埼玉県加須市外野３５０−１",
          tel: "0480-69-2160",
          openingTime: "月曜〜土曜 10:00~17:00",
          holiday: "日曜",
          placeGeopoint: const GeoPoint(36.1770074, 139.6344829),
          note: "hogehogehogehoge"),
      ExploreSpotModel(
          name: "ラーメンショップ122号騎西店",
          category: "gourmet",
          summary: "lorem ipsum",
          url: "http://www.kaigen-inc.com/",
          youtubeUrl: "",
          companyName: "ラーメンショップ122号騎西店",
          address: "〒347-0111 埼玉県加須市鴻茎１１１−１",
          tel: "0480-73-7740",
          openingTime: "月曜〜土曜 10:00~17:00",
          holiday: "日曜",
          placeGeopoint: const GeoPoint(36.0953286, 139.5778704),
          note: "うまい　うまい"),
    ];
    var spotItems = exploreSpots
        .map((spot) => ExploreSpotCardItem(exploreSpot: spot))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Column(
        children: [
          const ExploreSpotCarouselCardItem(key: null),
          Expanded(
              child: GridView.count(crossAxisCount: 3, children: spotItems))
        ],
      ),
    );
  }
}
