import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaGoogle extends StatefulWidget {

  @override
  State<MapaGoogle> createState() => _MapaGoogleState();
}

class _MapaGoogleState extends State<MapaGoogle> {

  @override
  void initState() {
    super.initState();
    recuperaLocalizacaoAtual();
  }

  Completer<GoogleMapController> _controllerMap = Completer();

  @override
  Widget build(BuildContext context) {

    return GoogleMap(
      zoomControlsEnabled: false,
      mapType: MapType.normal,
      initialCameraPosition: _position,
      onMapCreated: (GoogleMapController controller) {
        _controllerMap.complete(controller);
      },
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
    );
  }

  recuperaLocalizacaoAtual() async {
    Position posicao = await Geolocator().getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    setState(() {
      _position = CameraPosition(
          target: LatLng(posicao.latitude, posicao.longitude), zoom: 18);
      _movimentarCamera();
    });
  }

  CameraPosition _position = CameraPosition(
    target: LatLng(-23.503285, -46.642229),
    zoom: 16,
  );

  _movimentarCamera() async {
    GoogleMapController googleMapController = await _controllerMap.future;
    googleMapController
        .animateCamera(CameraUpdate.newCameraPosition(_position));
  }
}
