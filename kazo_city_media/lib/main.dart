// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:kazo_city_media/UI/category.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Image.asset('images/titlelogo.png'),
        actions:[
          IconButton(
            icon:Icon(Icons.search),
            color: Colors.white,
            onPressed: () => {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children:[
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('images/news.png')
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                    '新着News!!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                    )
                  ), 
                  
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
                    )
                ),
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
                    )
                )
                        ],
                      )
                  ],
                ),

                ]
            ),
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Container(
    alignment: Alignment.centerLeft,
    child: Text(
      'CATEGORY（知りたいを探す）',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      )
    )
  ),
  CategoryItem(category: categories[0]),
],

)

          ]
        ),
      ),

    );
  }
}
