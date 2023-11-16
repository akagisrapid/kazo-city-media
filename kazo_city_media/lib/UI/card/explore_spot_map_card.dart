import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kazo_city_media/UI/screen/explore_spot_page.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key, required this.exploreSpot}) : super(key: key);
  final ExploreSpotModel exploreSpot;

  @override
  // ignore: no_logic_in_create_state
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();
   ExploreSpotModel exploreSpot = ExploreSpotModel(name: "", category: "", summary: "", url: "", youtubeUrl: "", companyName: "", address: "", tel: "", openingTime: "", holiday: "", placeGeopoint: const GeoPoint(0.0,0.0), note: ""); 
  
  
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(35.6580339, 139.7016358),
    zoom: 14.4746,
  );


  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = {
      Marker(
        markerId: MarkerId(exploreSpot.name),
        position: LatLng(exploreSpot.placeGeopoint.latitude, exploreSpot.placeGeopoint.longitude),
        infoWindow: InfoWindow(title: exploreSpot.name, snippet: exploreSpot.address),
        )
    };
    return GoogleMap(
        mapType: MapType.normal,
        markers: markers,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
    );   
  }
}