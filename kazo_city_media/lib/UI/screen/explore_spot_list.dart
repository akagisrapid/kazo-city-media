import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'explore_spot.dart';

class ExploreSpotListItem extends StatelessWidget{
  const ExploreSpotListItem({super.key, required this.exploreSpots});
  final List<ExploreSpotModel> exploreSpots;

  @override
  Widget build(BuildContext context) {
    var spotItems = exploreSpots.map((spot) => ExploreSpotItem(exploreSpot: spot)).toList();
    return Column(
      children: [ 
        Expanded(child: GridView.count(crossAxisCount: 2, children: spotItems))
      ]);
  }
}