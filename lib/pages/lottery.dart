import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:hamiltonclone/hp.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// class Lottery extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 6,
//         child: LotterySt(),
//       ),
//     );
//   }
// }

class Lottery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: LotterySt(),
    );
  }
}

class LotterySt extends StatefulWidget {
  @override
  _LotteryStateSt createState() => _LotteryStateSt();
}

class _LotteryStateSt extends State<LotterySt> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _indore = const LatLng(22.71792, 75.8333);
  static const LatLng _gand = const LatLng(23.237560, 72.647781);
  static const LatLng _vad=const LatLng(22.310696, 73.192635);
  static const LatLng _ahm=const LatLng(23.033863,	72.585022);
  static const LatLng _ujj=const LatLng(23.1823902,	75.7764282);
  static const LatLng _bho=const LatLng(23.259933, 77.412613);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(
          "LOTTERY",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        backgroundColorStart: Colors.orange,
        backgroundColorEnd: Colors.green,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.list),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        bottom: TabBar(
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              child: Row(children: <Widget>[Text("Indore")]),
            ),
            Tab(
              child: Row(
                children: <Widget>[
                  Text("Gandhinagar"),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: <Widget>[
                  Text("Vadodara"),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: <Widget>[
                  Text("Ahemedabad"),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: <Widget>[
                  Text("Ujjain"),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: <Widget>[
                  Text("Bhopal"),
                ],
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 500.0,
                    width: 600.0,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _indore,
                        zoom: 11.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 500.0,
                    width: 600.0,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _gand,
                        zoom: 11.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 500.0,
                    width: 600.0,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _vad,
                        zoom: 11.0,
                      ),
                    ),
                  ),)
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 500.0,
                    width: 600.0,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _ahm,
                        zoom: 11.0,
                      ),
                    ),
                  ),)
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 500.0,
                    width: 600.0,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _ujj,
                        zoom: 11.0,
                      ),
                    ),
                  ),)
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 500.0,
                    width: 600.0,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _bho,
                        zoom: 11.0,
                      ),
                    ),
                  ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
