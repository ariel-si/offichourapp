import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaWidget extends StatelessWidget {

  Completer<GoogleMapController> _ControllerMap = Completer();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
            target: LatLng(-23.503285, -46.642229),
            zoom: 16
        ),
        onMapCreated: (GoogleMapController controller){
          _ControllerMap.complete(controller);
        },
      ),
    );
  }
}
