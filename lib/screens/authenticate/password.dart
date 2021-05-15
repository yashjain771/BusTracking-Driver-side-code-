import 'package:bus_tracking_system/shared/constants.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  String pin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric( horizontal: 50.0),
        child: Column(

          children: [
            SizedBox(
              height: 300.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: " Enter pin"),
              onChanged: (val) {
                setState(() => pin = val);
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              height: 40.0,
              minWidth: 300.0,
              color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pop(context, pin);
                },
                child: Text("       Enter      ",style:TextStyle( color: Colors.white,),))
          ],
        ),
      ),
    );
  }
}
