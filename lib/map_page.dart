import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'src/locations.dart' as locations;

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late BitmapDescriptor _markerIcon;

  @override
  void initState() {
    super.initState();
    _loadMarkerIcon();
  }

  Future<void> _loadMarkerIcon() async {
    final byteData = await rootBundle.load('assets/images/aviao-orange.png');
    final Uint8List bytes = byteData.buffer.asUint8List();
    _markerIcon = BitmapDescriptor.fromBytes(bytes, size: Size(48, 48));
  }

  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final destinations = await locations.getDestinations();
    setState(() {
      _markers.clear();
      for (final plan in destinations.plans) {
        final marker = Marker(
          markerId: MarkerId(plan.name),
          position: LatLng(plan.lat, plan.lng),
          icon: _markerIcon,
          infoWindow: InfoWindow(
            title: plan.name,
            snippet: plan.price,
          ),
        );
        _markers[plan.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mapa de Destinos'),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(-8.315258298464212, -56.17267751695688),
            zoom: 4.6,
          ),
          markers: _markers.values.toSet(),
        ),
      ),
    );
  }
}
