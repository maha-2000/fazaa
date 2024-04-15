import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
//import 'package:latlng/latlng.dart' as LatLng;

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    var marker = <Marker>[];
    marker = [
      const Marker(
        point: LatLng(36.216667,37.166668),
        child :  Icon(Icons.pin_drop,color: Colors.green),
      ),
      const Marker(
        point: LatLng(33.510414,36.278336),
        child :  Icon(Icons.pin_drop,color: Colors.red),
      ),
      // Marker(
      //   point: LatLng(),
      //   child :  Icon(Icons.pin_drop),
      // ),
    ];
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(child: FlutterMap(
             options: const MapOptions(
               center: LatLng(23.777176,90.399452),
               zoom: 8,
             ),
              children: [
                TileLayer(
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: const ['a','b','c'],
                ),
                 MarkerLayer(
                    markers: marker,
                ),
              ],
            ),
            ),
          ],
        ),
      )
    );
  }
}
