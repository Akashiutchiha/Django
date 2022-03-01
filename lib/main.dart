import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text("HealthMap"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [Icon(Icons.notifications_none)],
      )),
      body: Center(
        child: Container(
          child: Column(children: [
            Flexible(
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(5.9597, 10.14597),
                  zoom: 2,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c']),
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 20.0,
                        height: 20.0,
                        point: LatLng(5.9597, 10.14597),
                        builder: (ctx) => Icon(Icons.pin_drop_outlined),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: (IconButton(
        onPressed: () {},
        icon: Icon(Icons.explore),
        iconSize: 80,
        color: Colors.blue,
      )),
    );
  }
}
