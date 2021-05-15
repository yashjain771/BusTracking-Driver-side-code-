import 'package:bus_tracking_system/models/userlocation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrackingMap extends StatelessWidget {
  const TrackingMap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text(
          ' Bus Tracker',
          style: TextStyle(color: Colors.black, fontSize: 19),
        ),
        backgroundColor: Colors.white,
        elevation: 2.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              height: 40.0,
              minWidth: 335.0,
              color: Colors.blueGrey[500],
              child: Text(
                '     Stop Tracking     ',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: (){
                print("pressed stop");
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 50.0,
            ),
            Text('Lat-> ${userLocation?.latitude}'),
            Text('Long-> ${userLocation?.longitude}'),
            SizedBox(
              height: 100.0,
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
