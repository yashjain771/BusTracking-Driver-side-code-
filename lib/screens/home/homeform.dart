// import 'package:acrobus/shared/lists.dart';
// import 'package:flutter/material.dart';

// class HomeForm extends StatefulWidget {
//   @override
//   _HomeFormState createState() => _HomeFormState();
// }

// class _HomeFormState extends State<HomeForm> {
//   @override
//   Widget build(BuildContext context) {
//     String value;
//     return Column(
//       children: [
//         SizedBox(
//           height: 80.0,
//         ),
//         Center(
//             child:
//             DropdownButton<String>(
//           hint: Text("Select Bus No."),
//           value: value,
//           onChanged: (newValue){
//             setState(() {
//               value=newValue;
//             });
//             print(value);
//           },
//           items: buses.map((bus) {
//             return DropdownMenuItem(
//               value: bus,
//               child: Text(bus),
//             );
//           }).toList(),
//         )),
//         SizedBox(
//           height: 20.0,
//         ),
//         Center(
//           child: DropdownButton<String>(
//             style: TextStyle(color: Colors.brown, fontSize: 16),
//             hint: Text("Select Route"),
//             underline: Container(
//               height: 2,
//               color: Colors.brown,
//             ),
//             items: List<DropdownMenuItem<String>>.generate(
//               3,
//               (int index) => DropdownMenuItem<String>(
//                 value: routes[index],
//                 child: Text(routes[index]),
//               ),
//             ),
//             onChanged: (String value) {},
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:bus_tracking_system/models/userdata.dart';
import 'package:bus_tracking_system/models/userlocation.dart';
import 'package:bus_tracking_system/screens/home/tracking.dart';
import 'package:bus_tracking_system/screens/home/trackingpage.dart';
import 'package:bus_tracking_system/services/database.dart';
import 'package:bus_tracking_system/services/location_service.dart';
import 'package:bus_tracking_system/shared/constants.dart';
import 'package:bus_tracking_system/shared/lists.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  final _formKey = GlobalKey<FormState>();

  // form values
  String _busNo;
  String _route;

  updateData(String route, String busNo) {
    // final FirebaseAuth _auth = FirebaseAuth.instance;
    // Future<FirebaseUser> user = _auth.user;
    // print(user.toString());
    // DatabaseService ins= DatabaseService(uid:user.uid);
    //   ins.updateData(route, busNo);
    print("Button");
    DatabaseService(route, busNo);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            DropdownButtonFormField(
              hint: Text("Select Bus Number"),
              value: _busNo,
              decoration: textInputDecoration,
              items: buses.map((bus) {
                return DropdownMenuItem(
                  value: bus,
                  child: Text('$bus'),
                );
              }).toList(),
              onChanged: (val) => setState(() => _busNo = val),
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField(
              hint: Text("Select Route"),
              value: _route,
              decoration: textInputDecoration,
              items: routes.map((route) {
                return DropdownMenuItem(
                  value: route,
                  child: Text('$route'),
                );
              }).toList(),
              onChanged: (val) => setState(() => _route = val),
            ),
            SizedBox(height: 20.0),
            FlatButton(
                height: 40.0,
                minWidth: 335.0,
                color: Colors.blueGrey[500],
                child: Text(
                  '     Start tracking     ',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  print("jhg");

                  // db.inputData();
                  updateData(_route, _busNo);
                  // updateData(_route, _busNo);
                  // UserData(route: _route,bussNo: _busNo );
                  // DatabaseService().updateData(_route, _busNo);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Track()));
                  // print(result.toString());
                }),
          ],
        ),
      ),
    );
  }
}
