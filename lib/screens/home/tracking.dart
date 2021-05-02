import 'package:bus_tracking_system/models/userlocation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrackingMap extends StatelessWidget {
  const TrackingMap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            RaisedButton(
              onPressed: null,
              child: Text("start"),
              color: Colors.amber,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
                'Location: Lat${userLocation?.latitude}, Long: ${userLocation?.longitude}'),
          ],
        ),
      ),
    );
  }
}
