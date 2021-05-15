import 'package:bus_tracking_system/screens/authenticate/password.dart';
import 'package:bus_tracking_system/services/auth.dart';
import 'package:bus_tracking_system/shared/constants.dart';
import 'package:bus_tracking_system/shared/loading.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  // text filled state
  String email = '';
  String password = '';
  String error = '';

  authService() => AuthService();

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.blueGrey[300],
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 3.0,
              title: Text('Sign in ', style: TextStyle(color: Colors.black)),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Password()))
                        .then((value) => {
                              if (value == "admin") {widget.toggleView()}
                            });
                  },
                )
              ],
            ),
            body: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Email'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an Email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Password'),
                        validator: (val) => val.length < 6
                            ? 'Atleast 6 characters required'
                            : null,
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      SizedBox(height: 20.0),
                      FlatButton(
                          height: 50.0,
                          minWidth: 300.0,
                          color: Colors.blueGrey,
                          child: Text(
                            '     Sign In      ',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() => loading = true);
                              dynamic result = await _auth
                                  .signInWithEmailAndPassword(email, password);
                              if (result == null) {
                                setState(() {
                                  error =
                                      'Could not Sign In with those credentials';
                                  loading = false;
                                });
                              }
                            }
                          }),
                      SizedBox(height: 12.20),
                      Text(error,
                          style: TextStyle(color: Colors.red, fontSize: 16.0))
                    ],
                  ),
                )),
          );
  }
}
