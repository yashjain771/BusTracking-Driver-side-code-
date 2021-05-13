import 'package:bus_tracking_system/screens/wrapper.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _Page createState() => _Page();
}

class _Page extends State<FirstPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[500],
        appBar: AppBar(
          title: Text(
            'Bus Tracker',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.black)),
                color: Colors.deepPurple[300],
                textColor: Colors.black,
                height: 90,
                minWidth: 400,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wrapper()));
                },
                child: Text(
                  "Driver".toUpperCase(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(height: 50),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wrapper()));
                },
                height: 90,
                minWidth: 500,
                color: Colors.deepPurple[300],
                textColor: Colors.black,
                child: Text("Student".toUpperCase(),
                    style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class GooglePixel44XL1 extends StatelessWidget {
  GooglePixel44XL1({
    Key key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffebad78),
      body: Stack(
        children: <Widget>[
          Container(
            width: 412.0,
            height: 86.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              color: const Color(0xffe68d41),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(128.0, 215.0),
            child: Container(
              width: 156.0,
              height: 157.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 3.0, color: const Color(0xff3f3e3e)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(18, 18),
                    blurRadius: 18,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(103.0, 27.0),
            child: Text(
              'BUS TRACKER',
              style: TextStyle(
                fontFamily: 'Mongolian Baiti',
                fontSize: 30,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(167.0, 372.0),
            child: Text(
              'Driver',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: const Color(0xff060606),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(157.0, 651.0),
            child: Text(
              'Student',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: const Color(0xff060606),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(128.0, 484.0),
            child: Container(
              width: 156.0,
              height: 157.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 3.0, color: const Color(0xff3f3e3e)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(18, 18),
                    blurRadius: 18,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 813.0),
            child: Container(
              width: 412.0,
              height: 57.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                color: const Color(0xffe68d41),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}