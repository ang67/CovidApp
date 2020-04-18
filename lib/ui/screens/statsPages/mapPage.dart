import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapTabPage extends StatefulWidget {
  @override
  _MapTabPageState createState() => _MapTabPageState();
}

class _MapTabPageState extends State<MapTabPage> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(47.255573, 2.667633),
    zoom: 3.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(47.255573, 2.667633),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      
      scrollGesturesEnabled: true,
      minMaxZoomPreference: MinMaxZoomPreference(1, 20),
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
