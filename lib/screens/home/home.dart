
import 'package:bus_tracking_system/services/auth.dart';
import 'package:flutter/material.dart';

import 'homeform.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('   Bus Tracker',style: TextStyle(color: Colors.black, fontSize: 19),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text(' Log Out'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       FlatButton(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10.0),
      //             side: BorderSide(color: Colors.black)),
      //         color: Colors.orangeAccent,
      //         textColor: Colors.black,
      //         height: 150,
      //         minWidth: 150,
      //         onPressed: () async {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => MyFirstMap()));
      //         },
      //         child: Text(
      //           "Map".toUpperCase(),
      //           style: TextStyle(
      //             fontSize: 20.0,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: HomeForm(),
    );
  }
}
