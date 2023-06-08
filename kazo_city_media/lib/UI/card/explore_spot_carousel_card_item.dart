import 'package:flutter/material.dart';

class ExploreSpotCarouselCardItem extends StatelessWidget{
  const ExploreSpotCarouselCardItem({super.key});
  @override
  Widget build(BuildContext context) {
  return Stack(
    alignment: AlignmentDirectional.center, 
    children: [
        Image.asset('images/wisteria.jpg',
        fit: BoxFit.contain
        ),
        const Positioned(
          top: 100,
          child: Text('新着おでかけ・スポット',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )
          )
        ),
        Positioned(
          bottom: 100,
          child:Row(
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/explore_spot_list');
                  },
                  child: const Text('詳細'),
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
                  child: const Text('マイリスト'),
                )
                )
          ]
        )
        )
    ]
  );
  }
}