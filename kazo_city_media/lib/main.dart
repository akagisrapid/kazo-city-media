// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:kazo_city_media/UI/card/category.dart';
import 'package:kazo_city_media/UI/card/feature.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kazo_city_media/UI/card/latest_news.dart';
import 'package:kazo_city_media/UI/card/explore_spot.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kazo_city_media/UI/screen/explore_spot_list.dart';
import 'UI/screen/explore_spot.dart';
import 'firebase_options.dart';

import 'UI/card/writer.dart';


// void main() {
//   runApp(const MyApp());
// }
void main() async => runApp(
      DevicePreview(
        builder : (context) => MyApp(),
      ),
    )
;


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),

      routes: {
        '/explore_spot_list': (context) => const ExploreSpotListItem(exploreSpots: [],),
        // '/explore_spot': (context) => const ExploreSpotItem(exploreSpot: explore),
      }
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 var exploreSpots = [
  ExploreSpotModel(name: "ふわとそう", category:"exploreSpot", summary: "lorem ipsum", url: "https://www.example.com", youtubeUrl: "", companyName: "（かぶ）ふわとそう", address: "aa", tel: "03-0000-0000", openingTime: "月曜〜土曜 10:00~17:00", holiday: "日曜", placeGeopoint: const GeoPoint(35.0, 135.0), note: "hogehogehogehoge"),
];
  var categories = [
    CategoryModel(name: "おでかけ・スポット", imageUri: 'images/odekake_spot.png'),
    CategoryModel(name: "グルメ・カフェ", imageUri: 'images/gourmet_cafe.png'),
    CategoryModel(name: "美容室・サロン", imageUri: 'images/salon.png'),
    CategoryModel(name: "美容室・サロン", imageUri: 'images/salon.png'),
    CategoryModel(name: "美容室・サロン", imageUri: 'images/salon.png'),
    CategoryModel(name: "美容室・サロン", imageUri: 'images/salon.png'),
  ];
  var features = [
    FeatureModel(title: "3県境の秘密に密着取材！", imageUri: 'images/kyoukaigui.png', name: "角田 守良", belonging: "市長",
       comment: '未来へ受け継がれる歴史を継承し、\n市民のプライドを守りたい',
    backgroundColor: Color.fromARGB(255, 206, 253, 0)
    ),
    FeatureModel(title: "経営戦略をのぞいてみた。", imageUri: "images/ferris_wheel.png", name: "山本 朱里", belonging: "社長",
     comment: "子供の頃楽しかった思い出を\n今の世代にも体験して欲しかった",
     backgroundColor: Color.fromARGB(255, 42, 36, 108)
     ),
    FeatureModel(title: "初主演の舞台裏へ。", imageUri: "images/ryohei_seki.png", name: "関 涼平", belonging: "俳優", 
    comment: "人生には誰にでもドラマがある。\n偶然、今回の役と自分が重なった",
    backgroundColor: Color.fromARGB(0, 11, 11, 11)
    ),
  ];

  var writers = [
    WriterModel(name: "戦う社長の奮闘記！",episodeNumber: 12, imageUri: "images/kyoukaigui.png"),
    WriterModel(name: "済生会加須病院の軌跡", imageUri: "images/kazo_hospital.png", episodeNumber: 5),
    WriterModel(name: "これが私のかぞ暮らし。", imageUri: 'images/living_in_kazo.png', episodeNumber: 30)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Image.asset('images/titlelogo.png'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () => {},
          )
        ],
      ),
      body: Center(
        child:SingleChildScrollView(
          child: Column(
        children: [
          Center(
                  child: CarouselSlider(
                    options: CarouselOptions(animateToClosest: true, height: 500, viewportFraction: 0.8), 
                    items: const [LatestNewsItem(key: null),ExploreSpotCarouselCardItem(key: null)]
                  )
            ),
          
          // Column(children: [
          //   ExploreSpotListItem(exploreSpots: exploreSpots)
          // ],),
          
          
          
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text('CATEGORY（知りたいを探す）',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))),
              Scrollbar(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: categories
                              .map((e) => CategoryItem(category: e))
                              .toList())))
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text('FEATURE（特集・注目）',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))),
              Scrollbar(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: features
                              .map((e) => FeatureItem(feature: e))
                              .toList())))
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text("WRITER'S（連載記事・コラム）",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))),
              Scrollbar(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: writers
                              .map((e) => WriterItem(writer: e))
                              .toList())))
            ],
          ),

        ]),
      )
      )
      );
  }
}
