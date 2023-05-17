// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.title});

  final String title;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                )
                ]
            ),

            

          ],
        ),
      ),

    );
  }
}
