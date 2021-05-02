

import 'package:bus_tracking_system/models/userdata.dart';
import 'package:bus_tracking_system/services/database.dart';
import 'package:bus_tracking_system/services/locationdb.dart';

class UserLocation {
  final double latitude;
  final double longitude;
  String route;
  String bussNo;
  // UserData data=UserData();
  

  UserLocation({this.latitude, this.longitude}){
    LocationDB(latitude,longitude);
    // db.updateLocation(latitude,longitude);
  }
}