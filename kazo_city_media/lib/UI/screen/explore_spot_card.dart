import 'package:flutter/material.dart';
import 'package:kazo_city_media/UI/screen/explore_spot_page.dart';

class ExploreSpotCardItem extends StatelessWidget{
  const ExploreSpotCardItem({super.key,required this.exploreSpot});
  final ExploreSpotModel exploreSpot;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExploreSpotPage(exploreSpot: exploreSpot)
              )
            );
          },child: Stack(
      children: [
        Image.asset('images/salon.png'),// 仮
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              exploreSpot.name,
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
            )
          )
        )
      ],
    ),
        )
    )
    );
  }
}