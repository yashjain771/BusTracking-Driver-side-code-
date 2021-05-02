import 'package:bus_tracking_system/models/userlocation.dart';
import 'package:bus_tracking_system/screens/home/tracking.dart';
import 'package:bus_tracking_system/services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Track extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(
      create: (context) => LocationService().locationStream,
      child: TrackingMap(),
    );
  }
}
