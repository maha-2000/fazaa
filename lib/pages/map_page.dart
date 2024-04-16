import 'package:fazaa/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
    ];
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Flexible(child: FlutterMap(
               options: const MapOptions(
                 center: LatLng( 37.07279, 40.91854),
                 zoom: 6,
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
        ),
      )
    );
  }
}
