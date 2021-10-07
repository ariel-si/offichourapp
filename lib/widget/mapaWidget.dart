import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapaWidget extends StatefulWidget {

  @override
  _MapaWidgetState createState() => _MapaWidgetState();
}

class _MapaWidgetState extends State<MapaWidget> {

  @override
  Widget build(BuildContext context) {

    Completer<GoogleMapController> _ControllerMap = Completer();

    CameraPosition _position = CameraPosition(
      target: LatLng(-23.503285, -46.642229),
      zoom: 16,
    );

    return Container(
      child: GoogleMap(
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: _position,
        onMapCreated: (GoogleMapController controller){
          _ControllerMap.complete(controller);
        },
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}