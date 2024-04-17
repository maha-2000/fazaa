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
  final TextEditingController _searchController = TextEditingController();
  bool isSearchClicked = false;
  @override
  Widget build(BuildContext context) {
    var marker = <Marker>[];
    marker = [
      const Marker(
        point: LatLng(36.2012, 37.1612),
        child: Icon(Icons.pin_drop, color: Colors.green),
      ),
      // const Marker(
      //   point: LatLng(33.510414,36.278336),
      //   child :  Icon(Icons.pin_drop,color: Colors.red),
      // ),
    ];
    return Scaffold(
        appBar: AppBar(
          title: isSearchClicked ? Container(
            height: 40,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 12),
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                border: InputBorder.none,
                hintText: "ابحث هنا"
              ),
            ),
          ):const Text("بحث"),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isSearchClicked =!isSearchClicked;
                });
              },
              icon:  Icon(isSearchClicked ? Icons.close:Icons.search),
            ),
          ],
        ),
        body: Container(
          color: Colors.white38,
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Flexible(
                  child: FlutterMap(
                    options: const MapOptions(
                      center: LatLng(36.216667, 37.166668),
                      zoom: 12,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: const ['a', 'b', 'c'],
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
        ));
  }
}
