// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:kazo_city_media/UI/category.dart';
import 'package:kazo_city_media/UI/feature.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
    );

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
        child: SingleChildScrollView(
          child: Column(children: [
          Stack(alignment: AlignmentDirectional.center, children: <Widget>[
            Container(
                alignment: Alignment.center,
                child: Image.asset('images/news.png')),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.topCenter,
                    child: Text('新着News!!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('詳細'),
                        )),
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('マイリスト'),
                        ))
                  ],
                )
              ],
            ),
          ]),
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
          )


        ]),
      ),
      )
    );
  }
}
